{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  packages = with pkgs; let 
    g4f = pkgs.python3Packages.callPackage ../g4f-nix/default.nix {};
    llm_audit = pkgs.python3Packages.callPackage ../llm_audit/default.nix {g4f = g4f;};
    llm_audit-vim = callPackage ./default.nix {llm_audit = llm_audit;};
  in[
    python3Full git
    sqlite
    (neovim.override {
       configure.packages.myplugins = {
        start = [ llm_audit-vim ];
        opt = [];
      };
    })
    llm_audit
    g4f
  ];
}
