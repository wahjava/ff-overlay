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
    version = "100.0.1";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/100.0.1/linux-x86_64/en-US/firefox-100.0.1.tar.bz2";
      sha512 =
        "dbf87eb4736978733cb5cb60f2ffe663c568c089239de37bbfefa349ff9ad1d871a7c69eb86a09c73ea95f9476ffd6cb31237899d07eef4fc5e74ca67f597bfd";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "91.9.0esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/91.9.0esr/linux-x86_64/en-US/firefox-91.9.0esr.tar.bz2";
      sha512 =
        "dbf87eb4736978733cb5cb60f2ffe663c568c089239de37bbfefa349ff9ad1d871a7c69eb86a09c73ea95f9476ffd6cb31237899d07eef4fc5e74ca67f597bfd";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "101.0b8";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/101.0b8/linux-x86_64/en-US/firefox-101.0b8.tar.bz2";
      sha512 =
        "1222fd641adc6d3cdb24d652608f42affc7bcb29f903732ecda24e42aae5de2426f50a7a2540d9e98a04d31136effea00694ddb4cf54e92adcc5ae8655f16d0d";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
