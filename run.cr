#!/usr/bin/crystal
require "socket"
require "http"
require "json"

b = [
  {"agoo", "ruby", ["main.rb"]}, # should be alphabetical but agoo must come first or it will say adress in use
  {"absinthe", "mix", ["phx.server"]},
  {"async-graphql", "./target/release/async-graphql", nil},
  {"gqlgen", "./main", nil},
  {"graphene", "pipenv", ["run", "--", "gunicorn", "--log-level", "warning", "-w", System.cpu_count.to_s, "-b", "127.0.0.1:8000", "app:app"]},
  {"graphql-crystal", "./main", nil},
  {"graphql-go", "./main", nil},
  {"graphql-jit", "node", ["index.js"]},
  {"graphql-js", "node", ["index.js"]},
  {"graphql-ruby", "puma", ["-w", System.cpu_count.to_s, "-s", "-t", "2", "-b", "tcp://127.0.0.1:8000"]},
  {"graphql-yoga", "node", ["--no-warnings", "index.js"]},
  {"hotchocolate", "dotnet", ["run", "-c", "Release", "-v", "quiet", "--nologo"]},
  {"juniper", "./target/release/juniper", nil},
  {"sangria", "java", ["-Xrs", "-Xmx4G", "-jar", "./target/scala-2.13/sangria-assembly-0.1.0-SNAPSHOT.jar"]},
  {"static", "./main", nil},
  {"strawberry", "pipenv", ["run", "--", "gunicorn", "--log-level", "warning", "-w", System.cpu_count.to_s, "-b", "127.0.0.1:8000", "app:app"]},
  {"tartiflette", "pipenv", ["run", "--", "python", "app.py"]},
]

shards_mut = Mutex.new

ch = Channel(Nil).new
b.each do |b|
  spawn do
    dir = Path[Dir.current, b[0]]
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
    ch.send(nil)
  rescue ex
    puts ex.message
    exit 1
  end
end
b.each { |b| ch.receive }

b.each do |b|
  if port_bound?
    # a TERM signal doesn't always end all processes
    # agoo takes many seconds to terminate, and python doesn't terminate since we started using `pipenv run`
    # there may be a proper solution for each case, but for now we use fuser as a workaround
    system("fuser -k 8000/tcp")
    raise "port 8000 already in use" unless wait_unbound 60
    puts "killed socket process"
  end

  puts "--- #{b[0]}"

  p = run(b[1], b[2], Path[Dir.current, b[0]])

  while !port_bound?
    exit 1 if p.terminated?
    sleep 1
  end

  client = HTTP::Client.new "127.0.0.1", 8000
  client.read_timeout = 5
  res = client.post "/graphql", HTTP::Headers{"Content-Type" => "application/json"}, %({"query":"{ hello }"})
  if JSON.parse(res.body).to_json != %({"data":{"hello":"world"}})
    raise "unexpected response: #{res.body}"
  end

  if !system("wrk -t#{System.cpu_count} -c#{System.cpu_count * 50} -d10s --script=post.lua --latency http://127.0.0.1:8000/graphql")
    exit 1
  end
  p.terminate
  wait_p p
end

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
