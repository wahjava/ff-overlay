## autogenerated
self: super:
let
  common = {
    applicationName = "firefox";
    pname = "firefox-bin";
    desktopName = "Firefox";
  };
in
{
  firefox-stable =
    let
      version = "124.0.2";
      sources = {
        url = "https://download.cdn.mozilla.net/pub/firefox/releases/124.0.2/linux-x86_64/en-US/firefox-124.0.2.tar.bz2";
        sha512 = "81f8fb09bc08af78da51c2dde960c6be5e10d87ac0422eba4f6a9b674f7249abec3313f5b4f7b4d9ee91aed80bfd28c5ce07c568fc089581329ec52480f81b5a";
      };
    in
    super.wrapFirefox (
      (self.firefox-bin-unwrapped.override {
        generated = {
          inherit version sources;
        };
      }).overrideAttrs
      (old: {
        src = super.fetchurl sources;
      })
    ) common;
  firefox-esr =
    let
      version = "115.9.1esr";
      sources = {
        url = "https://download.cdn.mozilla.net/pub/firefox/releases/115.9.1esr/linux-x86_64/en-US/firefox-115.9.1esr.tar.bz2";
        sha512 = "81f8fb09bc08af78da51c2dde960c6be5e10d87ac0422eba4f6a9b674f7249abec3313f5b4f7b4d9ee91aed80bfd28c5ce07c568fc089581329ec52480f81b5a";
      };
    in
    super.wrapFirefox (
      (self.firefox-bin-unwrapped.override {
        generated = {
          inherit version sources;
        };
      }).overrideAttrs
      (old: {
        src = super.fetchurl sources;
      })
    ) common;
  firefox-devel =
    let
      version = "125.0b9";
      sources = {
        url = "https://download.cdn.mozilla.net/pub/firefox/releases/125.0b9/linux-x86_64/en-US/firefox-125.0b9.tar.bz2";
        sha512 = "1f2d6e248e8035b58f9ea6419ab70bbaa3b6ab8b1babfa00113b8345a507d8f716cda075f5d7f18916ddec1db0397ac53c3fb04b339b9420de3bd332607794c6";
      };
    in
    super.wrapFirefox (
      (self.firefox-bin-unwrapped.override {
        generated = {
          inherit version sources;
        };
      }).overrideAttrs
      (old: {
        src = super.fetchurl sources;
      })
    ) common;
}
