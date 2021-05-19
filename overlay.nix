# # autogenerated
self: super:
let
  common = {
    browserName = "firefox";
    pname = "firefox-bin";
    desktopName = "Firefox";
  };
in {
  firefox-stable = let
    version = "88.0.1";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/88.0.1/linux-x86_64/en-US/firefox-88.0.1.tar.bz2";
      sha512 =
        "43b3370cb16d093f4a0c71bae4b63faf039cf851b779bd2ddd8684ad00549d6c10559645bea661c5efe8f59823ec38a9fa643febe5f6a21dfa6ee0679d5aec28";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "78.10.1esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/78.10.1esr/linux-x86_64/en-US/firefox-78.10.1esr.tar.bz2";
      sha512 =
        "43b3370cb16d093f4a0c71bae4b63faf039cf851b779bd2ddd8684ad00549d6c10559645bea661c5efe8f59823ec38a9fa643febe5f6a21dfa6ee0679d5aec28";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "89.0b14";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/89.0b14/linux-x86_64/en-US/firefox-89.0b14.tar.bz2";
      sha512 =
        "cf4d42638d72d2e5cd7e6713ddf388f14b03be025dbccfa9a7bd2b1db3dda293a86b03d67baa6303a79bb7af5b7cac477f2384d0db71d9953d91f01ef0313d43";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
