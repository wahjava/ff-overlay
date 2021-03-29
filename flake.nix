{
  description = ''
    Pure and reproducible overlay for firefox.
  '';

  outputs = { self, nixpkgs, ... }@inputs: {
    overlay = import ./overlay.nix;
  };
}
