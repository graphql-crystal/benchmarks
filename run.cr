#!/usr/bin/crystal
require "socket"
require "http"
require "json"

b = [
  {"agoo", "ruby", ["main.rb"]},
  {"async-graphql", "./target/release/async-graphql", nil},
  {"gqlgen", "./main", nil},
  {"graphene", "pipenv", ["run", "--", "gunicorn", "--log-level", "warning", "-w", System.cpu_count.to_s, "-b", "127.0.0.1:8000", "app:app"]},
  {"graphql-crystal", "./main", nil},
  {"graphql-go", "./main", nil},
  {"graphql-jit", "node", ["index.js"]},
  {"graphql-js", "node", ["index.js"]},
  {"graphql-yoga", "node", ["--no-warnings", "index.js"]},
  {"hotchocolate", "dotnet", ["run", "-v", "quiet", "--nologo"]},
  # No usable version of libssl was found
  # {"hotchocolate", "./bin/release/net6.0/linux-x64/publish/hotchocolatebench"}
  {"juniper", "./target/release/juniper", nil},
  {"sangria", "java", ["-Xrs", "-Xmx4G", "-jar", "./target/scala-2.13/sangria-assembly-0.1.0-SNAPSHOT.jar"]},
  {"strawberry", "pipenv", ["run", "--", "gunicorn", "--log-level", "warning", "-w", System.cpu_count.to_s, "-b", "127.0.0.1:8000", "app:app"]},
  # libgraphqlparser fails to load and idk why
  # {"tartiflette", "pipenv", ["run", "--", "python", "app.py"]},
]

ch = Channel(Nil).new
b.each do |b|
  spawn do
    dir = Path[Dir.current, b[0]]
    run("shards", ["install", "-q", "--frozen"], dir).wait if File.exists? dir.join("shard.yml")
    run("crystal", ["build", "--release", "-D", "preview_mt", "main.cr"], dir).wait if File.exists? dir.join("shard.yml")
    run("npm", ["ci", "--silent"], dir).wait if File.exists? dir.join("package.json")
    run("cargo", ["build", "--release", "--quiet"], dir).wait if File.exists? dir.join("Cargo.toml")
    run("go", ["build", "-o", "main", "main.go"], dir).wait if File.exists? dir.join("go.mod")
    run("dotnet", ["publish", "-c", "release", "-r", "linux-x64", "--sc", "-v", "quiet", "--nologo"], dir).wait if File.exists? dir.join("appsettings.json")
    run("pipenv", ["install"], dir).wait if File.exists? dir.join("Pipfile")
    run("sbt", ["--warn", "compile", "assembly"], dir).wait if File.exists? dir.join("build.sbt")
    run("bundle", ["install", "--quiet"], dir).wait if File.exists? dir.join("Gemfile")
    puts "#{b[0]} build finished"
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
  dir = Path[Dir.current, b[0]]
  p = run(b[1], b[2], dir)
  while !port_bound?
    sleep 1
  end

  res = HTTP::Client.post("http://127.0.0.1:8000/graphql", HTTP::Headers{"Content-Type" => "application/json"}, %({"query":"{ hello }"}))
  if JSON.parse(res.body).to_json != %({"data":{"hello":"world"}})
    raise "unexpected response: #{res.body}"
  end

  if !system("wrk -t#{System.cpu_count} -c#{System.cpu_count * 50} -d10s --script=post.lua --latency http://127.0.0.1:8000/graphql")
    raise "fail"
  end
  p.terminate
  r = p.wait
  raise "failed with exit code #{r.exit_code}" if r.exit_code != 0
ensure
  p.terminate unless p.nil? || p.terminated?
end

def run(cmd, args = nil, dir = nil)
  Process.new(cmd, env: {"CRYSTAL_WORKERS" => System.cpu_count.to_s}, shell: false, args: args, input: Process::Redirect::Inherit, output: Process::Redirect::Inherit, error: Process::Redirect::Inherit, chdir: dir.to_s)
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
  s = TCPServer.new("localhost", 8000)
  s.close
  false
rescue Socket::BindError
  true
end
