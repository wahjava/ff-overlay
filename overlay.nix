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
    version = "105.0.1";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/105.0.1/linux-x86_64/en-US/firefox-105.0.1.tar.bz2";
      sha512 =
        "2f6e284adf5338425474d699647e831fce60f4bc5b516dc903d13b1a6961bcb7ba9318feba86933d3427af0227c05099f2733111b73730735caa45f9d427277a";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "102.3.0esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/102.3.0esr/linux-x86_64/en-US/firefox-102.3.0esr.tar.bz2";
      sha512 =
        "2f6e284adf5338425474d699647e831fce60f4bc5b516dc903d13b1a6961bcb7ba9318feba86933d3427af0227c05099f2733111b73730735caa45f9d427277a";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "106.0b7";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/106.0b7/linux-x86_64/en-US/firefox-106.0b7.tar.bz2";
      sha512 =
        "b1b3f2b6ad2aaa9c2089d63cdcc9609cca38e0858b2888657f28528c302cc0f3015c44efb9f79a1a1c47669e6443f2eb3339f14524a0773bf948e5a487813f3d";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
