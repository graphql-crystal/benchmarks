{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    gmp
    libevent
    pcre
    zlib
    openssl
    wrk
    rustc
    cargo
    go
    nodejs
    nodePackages.npm
    dotnet-sdk
    openjdk
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
    export PATH="$PATH:$GEM_HOME/bin"
  '';
}
