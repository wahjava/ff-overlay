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
    version = "106.0.1";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/106.0.1/linux-x86_64/en-US/firefox-106.0.1.tar.bz2";
      sha512 =
        "8c2fef8750e7d258674cde3055343752af5d8be2e226db142d0f212713a8865dbf5167fc9a924fe73bcafb1df7df6721d371402da993e7334c07c2945ba8bc5f";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "102.4.0esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/102.4.0esr/linux-x86_64/en-US/firefox-102.4.0esr.tar.bz2";
      sha512 =
        "8c2fef8750e7d258674cde3055343752af5d8be2e226db142d0f212713a8865dbf5167fc9a924fe73bcafb1df7df6721d371402da993e7334c07c2945ba8bc5f";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "107.0b5";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/107.0b5/linux-x86_64/en-US/firefox-107.0b5.tar.bz2";
      sha512 =
        "2d7ab3074d5f0187859d8d8d222d266fa0edbf6f67a83d8d61d237dc7c20a3b10e30de134477e704f3e17b3cb75e11adb6ff339b77ae30de11da5fc4682eeadb";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
