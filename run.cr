#!/usr/bin/crystal
require "socket"

b = [
  {"graphql-crystal", "crystal run --release -D preview_mt main.cr"},
  {"graphql-crystal", "crystal run --release -D preview_mt main.cr"},
  #{"graphql-jit", "npm ci --silent && npm run start --silent"}
]

ch = Channel(Nil).new

b.each do |b|
  spawn do
    dir = Path[Dir.current, b[0]]
    run("shards install -q --frozen", dir) if File.exists? dir.join("shard.yml")
    run("npm ci --silent", dir) if File.exists? dir.join("package.json")
    ch.send(nil)
  end
end

b.each { |b| ch.receive }

b.each do |b|
  if port_open?
    raise "port 8080 already in use"
  end
  dir = Path[Dir.current, b[0]]
  p = run(b[1], dir)
  while !port_open?
    sleep 1
  end
  if !system("wrk -t12 -c400 -d5s --timeout 10s --script=post.lua --latency http://127.0.0.1:8080/graphql")
    raise "fail"
  end
  p.terminate
  #p.signal(Signal::KILL)
  r = p.wait
  raise "failed with exit code #{r.exit_code}" if r.exit_code != 0
  #sleep 1
end

def run(cmd, dir)
  Process.new(cmd, shell: true, input: Process::Redirect::Inherit, output: Process::Redirect::Inherit, error: Process::Redirect::Inherit, chdir: dir.to_s)
end

def port_open?
  s = TCPSocket.new("127.0.0.1", 8080, connect_timeout: 1)
  s.close
  true
rescue IO::TimeoutError | Socket::ConnectError
  false
end