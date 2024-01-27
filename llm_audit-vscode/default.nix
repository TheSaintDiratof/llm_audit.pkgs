{ lib
, fetchFromGitHub
, vscode-utils
, llm_audit }:
vscode-utils.buildVscodeExtension {
  version = "0.0.1";
  name = "llm_audit-vscode";
  src = fetchFromGitHub {
    owner = "TheSaintDiratof";
    repo = "llm_audit-vscode";
    rev = "master";
    hash = "sha256-K0AlGLheUezzKc4wG8cZAvFBBsd4kT/HqhxNbp17qdI=";
  };
  vscodeExtPublisher = "Diratof Azdimarlow";
  vscodeExtName = "llm_audit-vscode";
  vscodeExtUniqueId = "DiratofAzdimarlow.llm_audit-vscode";
  nativeBuildInputs = [
    llm_audit
  ];
}
