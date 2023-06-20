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
    version = "114.0.2";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/114.0.2/linux-x86_64/en-US/firefox-114.0.2.tar.bz2";
      sha512 =
        "6919ac1611f69675f76801f7476736563a6af1207997610c92ad38dbbe1d8b25d985fb89d87174d1b379f6918cc0e989080be982a1fe1e38f06ac0ff4f2b4b67";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "102.12.0esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/102.12.0esr/linux-x86_64/en-US/firefox-102.12.0esr.tar.bz2";
      sha512 =
        "6919ac1611f69675f76801f7476736563a6af1207997610c92ad38dbbe1d8b25d985fb89d87174d1b379f6918cc0e989080be982a1fe1e38f06ac0ff4f2b4b67";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "115.0b7";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/115.0b7/linux-x86_64/en-US/firefox-115.0b7.tar.bz2";
      sha512 =
        "ee324d5d5d00a7fdbd0002c27aa3733afacfaa55bdbad87533b41d48e889cd037ba53fbca8f06e86bfdb66a46b116895042cf8f816eb2206e1dcd3dfbe5f12c4";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
