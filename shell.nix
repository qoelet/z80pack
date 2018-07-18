with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "z80pack-env";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    gcc
    gnumake
  ];

  shellHook = ''
    export HOME=~/.install/z80pack
    alias gst="git status"
    alias vim="nvim"
  '';
}
