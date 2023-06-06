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
    version = "114.0";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/114.0/linux-x86_64/en-US/firefox-114.0.tar.bz2";
      sha512 =
        "dff334c882cb5d6fa1aff6b31c9696dd513429130984e526e9aab0fb9337c3fe6615d38274224b2846bf1de7039d7600f27d9165ce6d33c83137638186112982";
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
        "dff334c882cb5d6fa1aff6b31c9696dd513429130984e526e9aab0fb9337c3fe6615d38274224b2846bf1de7039d7600f27d9165ce6d33c83137638186112982";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "115.0b1";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/115.0b1/linux-x86_64/en-US/firefox-115.0b1.tar.bz2";
      sha512 =
        "d26a46a411d153a90605b92e11d579f4c24f29af35b644352ab3c7bedf3b102260a7fcc6d9ab0529ae2933bbd8863e79dbe124afd71e4a7c2f38dc9c8a46b4ae";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
