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
    version = "102.0.1";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/102.0.1/linux-x86_64/en-US/firefox-102.0.1.tar.bz2";
      sha512 =
        "da5c605d8945ca89ad0906103a12cb2407f933b251a419535cdbea888d3545bc655957cfd44c65b1cc85072dcff0852bd4715e14fdb6d65694aab07d2396ee98";
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
        "da5c605d8945ca89ad0906103a12cb2407f933b251a419535cdbea888d3545bc655957cfd44c65b1cc85072dcff0852bd4715e14fdb6d65694aab07d2396ee98";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "103.0b6";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/103.0b6/linux-x86_64/en-US/firefox-103.0b6.tar.bz2";
      sha512 =
        "6a65c4412807ff0f38b6fcc3d7fcde6be04d265e32b619b845cd0c75c59227fb95949f84e7c25e36fefa998c153ea8717bcef6db458f2a3e75cfce3d92b33ca7";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
