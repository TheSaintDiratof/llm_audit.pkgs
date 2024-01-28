## Packages for set of LLM Audit plugins and its dependencies
There are:

llm-audit which provides standalone CLI interface for LLMs

llm\_audit-vscode which provides an extension for vscode which allows to send pieces of code to LLMs

llm\_audit-vim which provides a plugin for vim which allows to send pieces of code to LLMs

## How to install
```Nix 
users.users.user.packages = with pkgs; let
  g4f = python3Packages.callPackage ../g4f-nix/default.nix {};
  llm_audit = python3Packages.callPackage ./default.nix {g4f = g4f;};
  llm_audit-vim = callPackage ./default.nix {llm_audit = llm_audit;};
  llm_audit-vscode = callPackage ./default.nix {llm_audit = llm_audit;};
in [
  somePackages...
  llm_audit g4f # just for llm_audit CLI interface

  (vscode-with-extensions.override{vscodeExtensions = [ llm_audit-vscode ];}) # for VSCode extension

  ((vim_configurable.override { }).customize { # for vim plugin
    name = "vim";
     vimrcConfig.packages.myplugins = {
      start = [ llm_audit-vim ];
      opt = [];
    };
  })
];
```
## How to use
In CLI just send piece of code to stdin of llm\_audit

In Vim just select code via visual selection and type "llm" to ask LLM

In VSCode just select code and type "llm\_audit-vscode.askLLM" to ask LLM
