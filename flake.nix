{
  description = ''
    Pure and reproducible overlay for firefox.
  '';

  outputs = { nixpkgs, ... }: {
    overlay = import ./overlay.nix;

    devShell."x86_64-linux" =
      let pkgs = import nixpkgs { system = "x86_64-linux"; };
      in pkgs.mkShell { nativeBuildInputs = with pkgs; [ jq curl git nixfmt ]; };
  };
}
