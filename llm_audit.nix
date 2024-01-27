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
    hash = "sha256-7RjL0x6tOef9g3HNkXGNm3x0EypDH4npSFxnre/VRyo=";
  };
  nativeBuildInputs = [ 
    pip
    setuptools
    g4f
  ];
  doCheck = false;
}
