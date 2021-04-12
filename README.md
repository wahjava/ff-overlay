This is a nixpkgs overlay for providing development, and stable builds for Mozilla Firefox (for `x86_64-linux` system). It's inspired from [nixpkgs-mozilla](https://github.com/mozilla/nixpkgs-mozilla) overlay. It provides the `firefox-stable`, and `firefox-devel` attributes for Firefox stable, and development versions. If you are not using [nix flakes](https://nixos.wiki/wiki/Flakes), then better off using official [nixpkgs-mozilla](https://nixos.wiki/wiki/Flakes) overlay instead.

# Usage

e.g. in `flake.nix` of your NixOS configuration:

```nix
{
  description = "NixOS configuration";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  inputs.ff-overlay = {
    # unlike git+https, this does not require git at runtime
    url = "https://git.sr.ht/~abbe/ff-overlay/archive/mainline.tar.gz";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, ff-overlay }: {
    nixosConfigurations.myhost = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
        ({ pkgs, ... }: {
          nixpkgs.overlays = [ ff-overlay.overlay ];
          environment.systemPackages = with pkgs; [ firefox-devel ];
        })
      ];
    };
  };
}
```
