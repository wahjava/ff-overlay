# # autogenerated
self: super: {
  firefox-stable = let
    version = "87.0";
    url =
      "https://download.cdn.mozilla.net/pub/firefox/releases/87.0/linux-x86_64/en-US/firefox-87.0.tar.bz2";
    sha512 =
      "4958637e4f5f73d7c7ceab2a0c4fd1aa1c88954432320432a7707e6de042349cee1aac2af3afc8548a88fb00f2e4023a80a7f2cea4383d3ea43aeeaaff94a9b3";
    commons = {
      browserName = "firefox";
      pname = "firefox-bin";
      desktopName = "Firefox";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = {
      inherit version;
      sources = { inherit url sha512; };
    };
  }).overrideAttrs (old: { src = super.fetchurl { inherit url sha512; }; }))
  common;
  firefox-devel = let
    version = "88.0b4";
    url =
      "https://download.cdn.mozilla.net/pub/firefox/releases/88.0b4/linux-x86_64/en-US/firefox-88.0b4.tar.bz2";
    sha512 =
      "10c29188843a2cda97ab3bd58a50f6af2ea5f761db79ef9b7a9e2505a237c2c8414360ce4a90b048da6b132d56e3d56151799bd5b38bdcdd7ffcc535574b3127";
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = {
      inherit version;
      sources = { inherit url sha512; };
    };
  }).overrideAttrs (old: { src = super.fetchurl { inherit url sha512; }; }))
  common;
}