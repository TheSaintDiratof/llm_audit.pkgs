{ buildPythonPackage
, fetchFromGitHub
, pip
, setuptools
, pkgs ? import <nixpkgs> {}
, g4f
}:
buildPythonPackage rec {
  name = "llm_audit";
  version = "0.0.2";
  src = fetchFromGitHub {
    owner = "TheSaintDiratof";
    repo = "llm_audit";
    rev = "refs/tags/v${version}";
    hash = "sha256-3aXlXt1Z8taDnMluY4clIp+ZK+NLPvakkOKE3D3F2UA=";
  };
  nativeBuildInputs = [ 
    pip
    setuptools
    g4f
  ];
  doCheck = false;
}
