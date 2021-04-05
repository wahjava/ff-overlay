# # autogenerated
self: super:
let
  common = {
    browserName = "firefox";
    pname = "firefox-bin";
    desktopName = "Firefox";
  };
in {
  firefox-stable = let
    version = "87.0";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/87.0/linux-x86_64/en-US/firefox-87.0.tar.bz2";
      sha512 =
        "4958637e4f5f73d7c7ceab2a0c4fd1aa1c88954432320432a7707e6de042349cee1aac2af3afc8548a88fb00f2e4023a80a7f2cea4383d3ea43aeeaaff94a9b3";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "88.0b7";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/88.0b7/linux-x86_64/en-US/firefox-88.0b7.tar.bz2";
      sha512 =
        "ed469f2b411a5dae558e01e02c448ff64163c95627916078e939e01704c17f849f54a9766f63d893e9e2ac2f20c8f1bc9bfeb5ee8d09fd431fa7676a9df55ea4";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
