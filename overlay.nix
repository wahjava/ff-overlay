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
      version = "125.0.1";
      sources = {
        url = "https://download.cdn.mozilla.net/pub/firefox/releases/125.0.1/linux-x86_64/en-US/firefox-125.0.1.tar.bz2";
        sha512 = "c153c5ff3b995205ef39026fa18fa16a78935901ff8bbfa0fbc2efd48929e26564914f3260b5e8c80c32da7fb8fabf67b7f26a29290a43a85d5d5b3a43d5bc5a";
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
        sha512 = "c153c5ff3b995205ef39026fa18fa16a78935901ff8bbfa0fbc2efd48929e26564914f3260b5e8c80c32da7fb8fabf67b7f26a29290a43a85d5d5b3a43d5bc5a";
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
      version = "126.0b1";
      sources = {
        url = "https://download.cdn.mozilla.net/pub/firefox/releases/126.0b1/linux-x86_64/en-US/firefox-126.0b1.tar.bz2";
        sha512 = "a88e87ca87f944c3341cfda6b6e9f60fc657ee418093f212c317f700e81107491a61c8951c9df02e48ab10e13f80d527332cf320807217cf07d507dc6e27d294";
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
