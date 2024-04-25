## autogenerated
self: super:
let
  common = {
    applicationName = "firefox";
    pname = "firefox-bin";
    desktopName = "Firefox";
  };
in
{
  firefox-stable =
    let
      version = "125.0.2";
      sources = {
        url = "https://download.cdn.mozilla.net/pub/firefox/releases/125.0.2/linux-x86_64/en-US/firefox-125.0.2.tar.bz2";
        sha512 = "ddb25a4bed6f6c09d251dd93f7c0b13fd3bcc57dc083b32003c313686346f2034e2e693e43f1a283a061840fb62282df43e7864f2567c33d5a29ccc1e372f160";
      };
    in
    super.wrapFirefox (
      (self.firefox-bin-unwrapped.override {
        generated = {
          inherit version sources;
        };
      }).overrideAttrs
      (old: {
        src = super.fetchurl sources;
      })
    ) common;
  firefox-esr =
    let
      version = "115.10.0esr";
      sources = {
        url = "https://download.cdn.mozilla.net/pub/firefox/releases/115.10.0esr/linux-x86_64/en-US/firefox-115.10.0esr.tar.bz2";
        sha512 = "ddb25a4bed6f6c09d251dd93f7c0b13fd3bcc57dc083b32003c313686346f2034e2e693e43f1a283a061840fb62282df43e7864f2567c33d5a29ccc1e372f160";
      };
    in
    super.wrapFirefox (
      (self.firefox-bin-unwrapped.override {
        generated = {
          inherit version sources;
        };
      }).overrideAttrs
      (old: {
        src = super.fetchurl sources;
      })
    ) common;
  firefox-devel =
    let
      version = "126.0b5";
      sources = {
        url = "https://download.cdn.mozilla.net/pub/firefox/releases/126.0b5/linux-x86_64/en-US/firefox-126.0b5.tar.bz2";
        sha512 = "cf4beab21fe861c97d359bbe809412dc6936a9e66f27badc68bb64a0d938b494338b0855eb7960e9f544c347af47297383c3dc29b55d94805910b8db1e652113";
      };
    in
    super.wrapFirefox (
      (self.firefox-bin-unwrapped.override {
        generated = {
          inherit version sources;
        };
      }).overrideAttrs
      (old: {
        src = super.fetchurl sources;
      })
    ) common;
}
