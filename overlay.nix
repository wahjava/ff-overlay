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
    version = "118.0.1";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/118.0.1/linux-x86_64/en-US/firefox-118.0.1.tar.bz2";
      sha512 =
        "e6ea959927d352987386178f2141e6342b2d789545f0d92058e042ec66df144de9b1826e0079857b5a546c98cc9d41f391c9e11bbe86a219b5a25ed2fa14c6d0";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "115.3.1esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/115.3.1esr/linux-x86_64/en-US/firefox-115.3.1esr.tar.bz2";
      sha512 =
        "e6ea959927d352987386178f2141e6342b2d789545f0d92058e042ec66df144de9b1826e0079857b5a546c98cc9d41f391c9e11bbe86a219b5a25ed2fa14c6d0";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "119.0b7";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/119.0b7/linux-x86_64/en-US/firefox-119.0b7.tar.bz2";
      sha512 =
        "289113381b663a7258d084742b5d236650d106170aefef8292315cd3bcbd5404d2d42194f510cc92f9d28efbb2d8849129e21cfb822a61977ee9ba944c713c24";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
