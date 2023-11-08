ARG VARIANT="bookworm"
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
  && nix-env -i nixpkgs-fmt