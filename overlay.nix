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
    version = "104.0";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/104.0/linux-x86_64/en-US/firefox-104.0.tar.bz2";
      sha512 =
        "ffa3e72700d6113d5f7460ad475e37be3bf483fffea85b0bf184666ebfca97649131abab213123ea4f85baed3817596afedf886ed180e8a2921fe3d45f847634";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "91.13.0esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/91.13.0esr/linux-x86_64/en-US/firefox-91.13.0esr.tar.bz2";
      sha512 =
        "ffa3e72700d6113d5f7460ad475e37be3bf483fffea85b0bf184666ebfca97649131abab213123ea4f85baed3817596afedf886ed180e8a2921fe3d45f847634";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "105.0b3";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/105.0b3/linux-x86_64/en-US/firefox-105.0b3.tar.bz2";
      sha512 =
        "cb9a5e3b811bf55946ccb7891b04356bea94df027ade627bf6233f05103a565d050b27c43105a0be83b60bbc804f5adb5866357ece13d38bf7cc7365bbd72e23";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
