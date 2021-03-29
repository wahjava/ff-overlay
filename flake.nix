{
  description = ''
    Pure and reproducible overlay for firefox.
  '';

  outputs = { ... }: {
    overlay = import ./overlay.nix;
  };
}
