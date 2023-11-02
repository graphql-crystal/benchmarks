{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    libyaml
    gmp
    libevent
    pcre
    zlib
    openssl
    rustc
    cargo
    go
    nodejs
    nodePackages.npm
    dotnet-sdk
    jdk
    sbt
    python3Full
    pipenv
    cmake
    elixir
    ruby
    psmisc
    nim
    bun
    pcre2
    crystal
    shards
  ];

  shellHook = ''
    export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
    export PATH="$PATH:$GEM_HOME/bin:$HOME/go/bin"
    go install github.com/codesenberg/bombardier@latest
    mix local.hex --force
    mix local.rebar --force
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    (echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/vscode/.bashrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    brew tap tailcallhq/tailcall
    brew install tailcall
  '';
}
