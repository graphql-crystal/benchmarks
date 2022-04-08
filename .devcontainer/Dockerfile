# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.231.2/containers/debian/.devcontainer/base.Dockerfile

# [Choice] Debian version (use bullseye on local arm64/Apple Silicon): bullseye, buster
ARG VARIANT="buster"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

RUN apt-get update \
  && apt-get install -y libgit2-dev xz-utils \
  && curl -fsSL https://crystal-lang.org/install.sh | bash \
  && mkdir -p /etc/nix \
  && bash -c "printf \"sandbox = false\" > /etc/nix/nix.conf"

USER vscode

ENV USER=vscode

RUN bash -c "sh <(curl -L https://nixos.org/nix/install) --no-daemon" \
  && . /home/vscode/.nix-profile/etc/profile.d/nix.sh \
  && nix-env -iA -f '<nixpkgs>' wrk rustc cargo go nodejs nodePackages.npm dotnet-sdk nim openjdk sbt python3Full pipenv \
  && ssh-keyscan github.com >> ~/.ssh/known_hosts