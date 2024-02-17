{ lib
, fetchFromGitHub
, vscode-utils
, llm_audit }: 
let
  version = "0.0.3";
in vscode-utils.buildVscodeExtension {
  version = version;
  name = "llm_audit-vscode";
  src = fetchFromGitHub {
    owner = "TheSaintDiratof";
    repo = "llm_audit-vscode";
    rev = "refs/tags/v${version}";
    hash = "sha256-IUhn506EVqFBcUfyx9G9h1fTkni4f1X936a+En8crpc=";
  };
  vscodeExtPublisher = "Diratof Azdimarlow";
  vscodeExtName = "llm_audit-vscode";
  vscodeExtUniqueId = "DiratofAzdimarlow.llm_audit-vscode";
  nativeBuildInputs = [
    llm_audit
  ];
}
