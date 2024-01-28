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
    rev = "refs/tags/v{0.0.1}";
    hash = "sha256-7GcpOshyNefh0tzxDXUjsu55fo+LlEcPgem8VdeVi5k=";
  };
  vscodeExtPublisher = "Diratof Azdimarlow";
  vscodeExtName = "llm_audit-vscode";
  vscodeExtUniqueId = "DiratofAzdimarlow.llm_audit-vscode";
  nativeBuildInputs = [
    llm_audit
  ];
}
