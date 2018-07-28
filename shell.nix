with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "z80pack-env";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    gcc
    gnumake
    libjpeg
    libGL
    mesa_glu
    x11
    xorg.libXmu
  ];

  shellHook = ''
    export HOME=~/.install/z80pack
    alias gst="git status"
    alias vim="nvim"
  '';
}
