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
    version = "102.0";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/102.0/linux-x86_64/en-US/firefox-102.0.tar.bz2";
      sha512 =
        "3130e3d252b26c18a88251ceac4ef08c7d4be3b79036441e2b96096d3591726c691770f4f840a754912b5288dca255ac8171b22b7fb3c82b6cada0f0052ff5cb";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "91.11.0esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/91.11.0esr/linux-x86_64/en-US/firefox-91.11.0esr.tar.bz2";
      sha512 =
        "3130e3d252b26c18a88251ceac4ef08c7d4be3b79036441e2b96096d3591726c691770f4f840a754912b5288dca255ac8171b22b7fb3c82b6cada0f0052ff5cb";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "103.0b4";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/103.0b4/linux-x86_64/en-US/firefox-103.0b4.tar.bz2";
      sha512 =
        "934711fe0c7fd65e9043fb20fbfaeab0c8fdffb6ebd0421fbd4cea8ebf784ad0ea711e3203909dd1b59e879d2e3336fe42ac24f849395ad5c45397b63b9cc28b";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
