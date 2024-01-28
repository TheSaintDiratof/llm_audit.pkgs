{ lib
, fetchFromGitHub
, vimUtils
, llm_audit }:
vimUtils.buildVimPlugin {
  version = "0.0.1";
  pname = "llm_audit-vim";
  src = fetchFromGitHub {
    owner = "TheSaintDiratof";
    repo = "llm_audit-vim";
    rev = "master";
    hash = "sha256-69tmNK6YNB1TcMV6U2Rc7ZqPLRHLrGJVQjWJtX0ZU7A=";
  };
  nativeBuildInputs = [
    llm_audit
  ];
  #passthru = {
  #  inherit llm_audit;
  #  updateScript = nix-update-script {
  #    attrPath = "vimPlugins.llm_audit-vim";
  #  };
  #};
}
