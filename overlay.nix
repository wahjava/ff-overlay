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
    version = "124.0.1";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/124.0.1/linux-x86_64/en-US/firefox-124.0.1.tar.bz2";
      sha512 =
        "8bf6a6fe2b672ff026909d98bf711a693164a6367b1b247c66b566e84c1cf71f1d29de128ca17d84230344dc64e28c9130ec5b0cb7942aa166d0786bce4226b8";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "115.9.1esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/115.9.1esr/linux-x86_64/en-US/firefox-115.9.1esr.tar.bz2";
      sha512 =
        "8bf6a6fe2b672ff026909d98bf711a693164a6367b1b247c66b566e84c1cf71f1d29de128ca17d84230344dc64e28c9130ec5b0cb7942aa166d0786bce4226b8";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "125.0b4";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/125.0b4/linux-x86_64/en-US/firefox-125.0b4.tar.bz2";
      sha512 =
        "e498c861118674664f15e390a1f350d5c416db360f4e8e2c9ded8ff32f3ef3d37229b94275e715c780836906edc426c6d14cae2236592ddce697098b78b3e3f4";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
