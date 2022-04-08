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
    version = "99.0";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/99.0/linux-x86_64/en-US/firefox-99.0.tar.bz2";
      sha512 =
        "978d025777a02b695a8979f1c5503a6d4031f052e25593b2021f2b41d51f2dc054804b0c685c100a5062903eaff02996beb545534734d8a971789553a15080fc";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "91.8.0esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/91.8.0esr/linux-x86_64/en-US/firefox-91.8.0esr.tar.bz2";
      sha512 =
        "978d025777a02b695a8979f1c5503a6d4031f052e25593b2021f2b41d51f2dc054804b0c685c100a5062903eaff02996beb545534734d8a971789553a15080fc";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "100.0b3";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/100.0b3/linux-x86_64/en-US/firefox-100.0b3.tar.bz2";
      sha512 =
        "72bc67d15ab67972457639766c19c52703365a96fd5a97541cfaba38337756b5f42cf19657065515faef1666b854e0acf9dbc43fa6bd6b38b3b4c9b5f0c5d370";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
