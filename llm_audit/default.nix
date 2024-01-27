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
    hash = "sha256-7D2aaUjD0ZmdYuWrjSZbGIdCidhcWi6kztWya+bR0GA=";
  };
  nativeBuildInputs = [ 
    pip
    setuptools
    g4f
  ];
  doCheck = false;
}
