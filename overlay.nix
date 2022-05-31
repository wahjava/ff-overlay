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
    version = "101.0";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/101.0/linux-x86_64/en-US/firefox-101.0.tar.bz2";
      sha512 =
        "9c43f698d6d42c475479f07f14ba5e190fcb4b999619249846bb1d8cfec902d3e3fde873a5c0df09bea945425d1d6679d3c83188f6130da0a88b5e89014bbf6b";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "91.10.0esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/91.10.0esr/linux-x86_64/en-US/firefox-91.10.0esr.tar.bz2";
      sha512 =
        "9c43f698d6d42c475479f07f14ba5e190fcb4b999619249846bb1d8cfec902d3e3fde873a5c0df09bea945425d1d6679d3c83188f6130da0a88b5e89014bbf6b";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "102.0b1";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/102.0b1/linux-x86_64/en-US/firefox-102.0b1.tar.bz2";
      sha512 =
        "a0645a035d9dde9d5e9ecc54bc4f000aaaac2e608cc17a8e4024ec445dc1ebbef8d358f01bcedc18a25078744d7e59145ba41c3c1802f2184930096e6c7997f3";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
