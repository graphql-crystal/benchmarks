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
    #crystal # broken undefined reference to `GC_get_my_stackbottom'
  ];

  shellHook = ''
    export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
    export PATH="$PATH:$GEM_HOME/bin:$HOME/go/bin"
    go install github.com/codesenberg/bombardier@latest
    mix local.hex --force
    mix local.rebar --force
  '';
}
