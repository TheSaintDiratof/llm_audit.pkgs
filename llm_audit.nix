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
    hash = "sha256-3ltLMmx1xqfZnA4v9KTQgwI3HJpGFYxJu6nrM9NhqSg=";
  };
  nativeBuildInputs = [ 
    pip
    setuptools
    g4f
  ];
  doCheck = false;
}
