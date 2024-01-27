{ lib
, fetchFromGitHub
, vscode-utils
, llm_audit }:
vscode-utils.buildVscodeExtension {
  version = "0.0.2";
  name = "llm_audit-vscode";
  src = fetchFromGitHub {
    owner = "TheSaintDiratof";
    repo = "llm_audit-vscode";
    rev = "1d1543282c3444732f6f8039af54c460780b031b";
    hash = "sha256-vjzOguARe2B/ytYAbCfDQzLUeB1O0OFfKjfQzU8PRLI=";
  };
  vscodeExtPublisher = "Diratof Azdimarlow";
  vscodeExtName = "llm_audit-vscode";
  vscodeExtUniqueId = "DiratofAzdimarlow.llm_audit-vscode";
  nativeBuildInputs = [
    llm_audit
  ];
}
