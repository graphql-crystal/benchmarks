#!/usr/bin/crystal
require "socket"
require "http"
require "json"
require "yaml"
require "ecr"

benchmarks = Array(Benchmark).from_yaml ECR.render("benchmarks.yaml")

shards_mut = Mutex.new

ch = Channel(Nil).new
benchmarks.map do |b|
  spawn do
    dir = Path[Dir.current, b.id]
    if File.exists? dir.join("shard.yml")
      shards_mut.synchronize do
        wait_p run("shards", ["install", "-q", "--frozen"], dir)
      end
    end
    wait_p run("crystal", ["build", "--release", "-D", "preview_mt", "main.cr"], dir) if File.exists? dir.join("shard.yml")
    wait_p run("npm", ["ci", "--silent"], dir) if File.exists? dir.join("package.json")
    wait_p run("cargo", ["build", "--release", "--quiet"], dir) if File.exists? dir.join("Cargo.toml")
    wait_p run("go", ["build", "-o", "main", "main.go"], dir) if File.exists? dir.join("go.mod")
    wait_p run("pipenv", ["install"], dir) if File.exists? dir.join("Pipfile")
    wait_p run("sbt", ["--warn", "compile", "assembly"], dir) if File.exists? dir.join("build.sbt")
    wait_p run("bundle", ["install", "--quiet"], dir) if File.exists? dir.join("Gemfile")
    wait_p run("mix", ["deps.get", "--only", "prod"], dir) if File.exists? dir.join("mix.exs")
    wait_p run("mix", ["compile"], dir) if File.exists? dir.join("mix.exs")
    wait_p run("nimble", ["--silent", "-y", "install"], dir) if File.exists? dir.join("main.nimble")
    wait_p run("nimble", ["--silent", "-y", "build", "-d:release", "-d:chronicles_log_level=WARN"], dir) if File.exists? dir.join("main.nimble")
    ch.send(nil)
  rescue ex
    puts ex.message
    exit 1
  end
end.each { |_| ch.receive }

benchmarks.each_with_index do |b, i|
  if port_bound?
    # a TERM signal doesn't always end all processes
    # agoo takes many seconds to terminate, and python doesn't terminate since we started using `pipenv run`
    # there may be a proper solution for each case, but for now we use fuser as a workaround
    system("fuser -k 8000/tcp")
    raise "port 8000 already in use" unless wait_unbound 60
    puts "killed socket process"
  end

  puts "running #{b.id}..."

  p = run(b.run.cmd, b.run.args, Path[Dir.current, b.id])

  while !port_bound?
    exit 1 if p.terminated?
    sleep 1
  end

  res = `k6 run -q -d 10s --vus #{System.cpu_count * 50} k6.js`
  exit 1 unless $?.success?

  p.terminate
  wait_p p

  benchmarks[i].metrics = JSON.parse(res.split('\n').last)["metrics"]
end

benchmarks = benchmarks.sort do |a, b|
  b.metrics.not_nil!.["http_reqs"]["values"]["rate"].as_f <=> a.metrics.not_nil!.["http_reqs"]["values"]["rate"].as_f
end
readme = ECR.render("README.ecr")
File.write "README.md", readme
puts readme

def run(cmd, args, dir)
  env = {"CRYSTAL_WORKERS" => System.cpu_count.to_s, "MIX_ENV" => "prod", "MIX_QUIET" => "1", "PORT" => "8000"}
  p = Process.new(cmd, env: env, args: args, input: Process::Redirect::Inherit, output: Process::Redirect::Inherit, error: Process::Redirect::Inherit, chdir: dir.to_s)
  at_exit { p.terminate unless p.terminated? }
  p
end

def wait_p(p)
  r = p.wait
  if r.exit_code != 0
    puts "command failed with exit code #{r.exit_code}"
    exit 1
  end
end

def wait_unbound(time : Int32)
  if port_bound?
    if time > 0
      sleep 1
      wait_unbound time - 1
    else
      false
    end
  else
    true
  end
end

def port_bound?
  s = TCPServer.new("127.0.0.1", 8000)
  s.close
  false
rescue Socket::BindError
  true
end

class Benchmark
  include YAML::Serializable

  class Script
    include YAML::Serializable

    property cmd : String
    property args : Array(String)?
  end

  property id : String
  property name : String
  property url : String
  property lang : String
  property server : String
  property run : Script

  @[YAML::Field(ignore: true)]
  property metrics : JSON::Any?

  def reqs
    "#{@metrics.not_nil!.["http_reqs"]["values"]["rate"].as_f.humanize(2)}ps"
  end

  def latency
    v = @metrics.not_nil!.["http_req_duration"]["values"]
    "#{v["avg"].as_f.format(decimal_places: 2)}ms"
  end
end
