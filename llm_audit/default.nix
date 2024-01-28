{ buildPythonPackage
, fetchFromGitHub
, pip
, setuptools
, pkgs ? import <nixpkgs> {}
, g4f
}:
buildPythonPackage rec {
  name = "llm_audit";
  src = fetchFromGitHub {
    owner = "TheSaintDiratof";
    repo = "llm_audit";
    rev = "master";
    hash = "sha256-F3tosVHKOxTZHneKMUfRJ8Kh5SdeCVk+GlF+ZN7ipiY=";
  };
  nativeBuildInputs = [ 
    pip
    setuptools
    g4f
  ];
  doCheck = false;
}
