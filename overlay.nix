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
    version = "104.0.2";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/104.0.2/linux-x86_64/en-US/firefox-104.0.2.tar.bz2";
      sha512 =
        "1549121c98a8d50255eef44d3d3b1064507f1f5182901fd1743b81507b894b646f09ee0e668d88c968da80f19b36b39785a221edb02372776a6eb0a648c95187";
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
        "1549121c98a8d50255eef44d3d3b1064507f1f5182901fd1743b81507b894b646f09ee0e668d88c968da80f19b36b39785a221edb02372776a6eb0a648c95187";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "105.0b8";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/105.0b8/linux-x86_64/en-US/firefox-105.0b8.tar.bz2";
      sha512 =
        "eddc64e6204a0702efc6b7a3ae63381cf3cd260b2f8e4aee120d2946ef927dc92588d19eef5f6ec19f467ee91b91538571979012602cee43e1e1400c68ec283d";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
