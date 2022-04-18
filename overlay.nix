# # autogenerated
self: super:
let
  common = {
    applicationName = "firefox";
    pname = "firefox-bin";
    desktopName = "Firefox";
  };
in {
  firefox-stable = let
    version = "99.0.1";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/99.0.1/linux-x86_64/en-US/firefox-99.0.1.tar.bz2";
      sha512 =
        "a122bacbe2cc48301f696696e8854d190e0ce9ce72b39e9df90846214c536730a7190a858295f56e836b263bdc2e4e3041cb3bfad8d7cf483c50478c634c14f5";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "91.8.0esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/91.8.0esr/linux-x86_64/en-US/firefox-91.8.0esr.tar.bz2";
      sha512 =
        "a122bacbe2cc48301f696696e8854d190e0ce9ce72b39e9df90846214c536730a7190a858295f56e836b263bdc2e4e3041cb3bfad8d7cf483c50478c634c14f5";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "100.0b7";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/100.0b7/linux-x86_64/en-US/firefox-100.0b7.tar.bz2";
      sha512 =
        "b27b6d1100cf38793557026acfd609d1c533094f3f638ff4bf242cee8aa60af6d2b0de4196330fe9e9c0205f186dde3cb67fed1bff3c4dbf3e75ca50a63dabf5";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
