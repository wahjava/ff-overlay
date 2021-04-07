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
    version = "88.0b8";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/88.0b8/linux-x86_64/en-US/firefox-88.0b8.tar.bz2";
      sha512 =
        "0491b374451d217ba44b39fe03d32076258415ea9794c4428657bb885a7211805adc8ea0522334afde7598d5759735446e6e8bdc55f88b0b21fefc3ed1da7a71";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
