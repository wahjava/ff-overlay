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
    version = "103.0.1";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/103.0.1/linux-x86_64/en-US/firefox-103.0.1.tar.bz2";
      sha512 =
        "26dc0f1be65dd2f655b3a17b690938bf3b13f2c03e0041b89b1a68426d1641d9536ff0c4b23333d48b62c855b0d78e0fc61c29d3c8613af16d3001be9c9edbfc";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "91.12.0esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/91.12.0esr/linux-x86_64/en-US/firefox-91.12.0esr.tar.bz2";
      sha512 =
        "26dc0f1be65dd2f655b3a17b690938bf3b13f2c03e0041b89b1a68426d1641d9536ff0c4b23333d48b62c855b0d78e0fc61c29d3c8613af16d3001be9c9edbfc";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "104.0b5";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/104.0b5/linux-x86_64/en-US/firefox-104.0b5.tar.bz2";
      sha512 =
        "745031e3ff259376c93e8289bd8a9f893c266c850cbe962ea1259b188490e5fcedb26e506940f7052c5ff1b31bdf5e7bee9a1c15eb95bd9dab5efe61dcaf5e6d";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
