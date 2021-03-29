{
  description = ''
    Pure and reproducible overlay for firefox.
  '';

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }@inputs: {
    overlay = import ./overlay.nix;
  };
}
