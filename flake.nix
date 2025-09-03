{
  description = ''
    Pure and reproducible overlay for firefox.
  '';

  outputs = { nixpkgs, ... }: {
    overlay = {
      x86_64-linux = import ./x86_64-linux.nix;
      aarch64-linux = import ./aarch64-linux.nix;
    };

    devShell."x86_64-linux" =
      let pkgs = import nixpkgs { system = "x86_64-linux"; };
      in pkgs.mkShell { nativeBuildInputs = with pkgs; [ jq curl git nixfmt ]; };
  };
}
