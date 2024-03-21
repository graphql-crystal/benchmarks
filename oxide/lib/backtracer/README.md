# backtracer.cr [![CI](https://github.com/Sija/backtracer.cr/actions/workflows/ci.yml/badge.svg)](https://github.com/Sija/backtracer.cr/actions/workflows/ci.yml) [![Releases](https://img.shields.io/github/release/Sija/backtracer.cr.svg)](https://github.com/Sija/backtracer.cr/releases) [![License](https://img.shields.io/github/license/Sija/backtracer.cr.svg)](https://github.com/Sija/backtracer.cr/blob/master/LICENSE)

Crystal shard aiming to assist with parsing backtraces into a structured form.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     backtracer:
       github: Sija/backtracer.cr
   ```

2. Run `shards install`

## Usage

```crystal
require "backtracer"

def foo
  raise "bang!"
end

def bar
  foo
end

def baz
  bar
end

begin
  baz
rescue ex
  backtrace = Backtracer.parse(ex.backtrace)

  # Prints
  #
  # `foo` at foo.cr:4:3
  # `bar` at foo.cr:8:3
  # `baz` at foo.cr:12:3
  # ...
  backtrace.frames.each do |frame|
    puts frame
  end
end
```

## Contributing

1. Fork it (<https://github.com/Sija/backtracer.cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [@Sija](https://github.com/Sija) Sijawusz Pur Rahnama - creator and maintainer
