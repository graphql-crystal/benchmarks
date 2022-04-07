#!/usr/bin/crystal
require "socket"

b = [
  {"graphql-crystal", "./main", nil},
  {"graphql-jit", "node", ["index.js"]},
  {"async-graphql", "./target/release/async-graphql", nil},
  {"gqlgen", "./main", nil},
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
    ch.send(nil)
  end
end

b.each { |b| ch.receive }

b.each do |b|
  if port_open?
    raise "port 8000 already in use"
  end
  puts "--- #{b[0]}"
  dir = Path[Dir.current, b[0]]
  p = run(b[1], b[2], dir)
  while !port_open?
    sleep 1
  end
  if !system("wrk -t#{System.cpu_count} -c#{System.cpu_count * 50} -d30s --timeout 10s --script=post.lua --latency http://127.0.0.1:8000/graphql")
    raise "fail"
  end
  p.terminate
  r = p.wait
  raise "failed with exit code #{r.exit_code}" if r.exit_code != 0
  sleep 2
end

def run(cmd, args = nil, dir = nil)
  Process.new(cmd, env: {"CRYSTAL_WORKERS" => System.cpu_count.to_s}, shell: false, args: args, input: Process::Redirect::Inherit, output: Process::Redirect::Inherit, error: Process::Redirect::Inherit, chdir: dir.to_s)
end

def port_open?
  s = TCPSocket.new("127.0.0.1", 8000, connect_timeout: 1)
  s.close
  true
rescue IO::TimeoutError | Socket::ConnectError
  false
end
