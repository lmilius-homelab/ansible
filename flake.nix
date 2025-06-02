{
  description = "Ansible host Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem
    (
      system: let
        pkgs = import nixpkgs {
          inherit system;
        };
      in
        with pkgs; {
          devShells.default = mkShell {
            buildInputs = [
              just
              ansible
              bitwarden-cli
            ];
            shellHook = ''
              ansible-galaxy install -r requirements.yaml
              # source setup_ssh_keys.sh
            '';
            EDITOR = "vim";
          };
        }
    );
}
