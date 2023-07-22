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
    version = "116.0b8";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/116.0b8/linux-x86_64/en-US/firefox-116.0b8.tar.bz2";
      sha512 =
        "2afb4e3142e1b37cb1f60cdfc2573a9241d5df89fd4f2792ff3210ec0d74207d47b2df9382816ad209dbbe3e7d9f684878802b1104e75763acd4634f654ee15f";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
