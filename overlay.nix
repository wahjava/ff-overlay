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
    version = "115.0.2";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/115.0.2/linux-x86_64/en-US/firefox-115.0.2.tar.bz2";
      sha512 =
        "38ea15e1574dced96ee54238018c745dff1478f159e917447ded6e558a1df5914f9305e0121976aae95e1094884cf4d6f4e8d32e97180baa7690b16ae42a77b0";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "102.13.0esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/102.13.0esr/linux-x86_64/en-US/firefox-102.13.0esr.tar.bz2";
      sha512 =
        "38ea15e1574dced96ee54238018c745dff1478f159e917447ded6e558a1df5914f9305e0121976aae95e1094884cf4d6f4e8d32e97180baa7690b16ae42a77b0";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "116.0b4";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/116.0b4/linux-x86_64/en-US/firefox-116.0b4.tar.bz2";
      sha512 =
        "0f812ce68fea96671984f2157b4d22fc6d922c92ef534aa89b67982cadd0723aa629a13e179f61dfa532b1f23c7abe0085eb0534d62366857982b13048ec9b02";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
