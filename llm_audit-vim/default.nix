{ lib
, fetchFromGitHub
, vimUtils
, llm_audit }:
let 
  version = "0.0.2";
  src = fetchFromGitHub {
    owner = "TheSaintDiratof";
    repo = "llm_audit-vim";
    rev = "refs/tags/v${version}";
    hash = "sha256-HJntOA5sA2eN9R3uANFeDxgLExwEfOKO5XauvuyiUa8=";
  };
in vimUtils.buildVimPlugin {
  inherit src version;
  pname = "llm_audit-vim";
  nativeBuildInputs = [
    llm_audit
  ];
}
