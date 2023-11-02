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
    version = "119.0";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/119.0/linux-x86_64/en-US/firefox-119.0.tar.bz2";
      sha512 =
        "1c71258ce1037fbcdddac889181776fa6017dea5fba738b65855e7bbe785db9ad596c3b458483107917164ceeca3ca9ec25c638d3ba67bd4c7a6a3a179deb066";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "115.4.0esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/115.4.0esr/linux-x86_64/en-US/firefox-115.4.0esr.tar.bz2";
      sha512 =
        "1c71258ce1037fbcdddac889181776fa6017dea5fba738b65855e7bbe785db9ad596c3b458483107917164ceeca3ca9ec25c638d3ba67bd4c7a6a3a179deb066";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "120.0b5";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/120.0b5/linux-x86_64/en-US/firefox-120.0b5.tar.bz2";
      sha512 =
        "4b2959a97312483aaa3924129790d0bf0f72ac71213df45cf6647bff2453a997e7a6b316474e0473731ead6265c1511acef9be91c2fd288c61a59e2a4b5152de";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
