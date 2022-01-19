# # autogenerated
self: super:
let
  common = {
    ${
      if super.firefox-unwrapped ? applicationName then
        "applicationName"
      else
        "browserName"
    } = "firefox";
    pname = "firefox-bin";
    desktopName = "Firefox";
  };
in {
  firefox-stable = let
    version = "96.0.1";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/96.0.1/linux-x86_64/en-US/firefox-96.0.1.tar.bz2";
      sha512 =
        "c7fd7df1b3c4d7b98c1821a4b4fc402f875c3f5828c2f5be12765780798fdb704b1c2b6b2c07a0bd28253542543268559c5af15a6952502d23178070c5764d56";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "91.5.0esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/91.5.0esr/linux-x86_64/en-US/firefox-91.5.0esr.tar.bz2";
      sha512 =
        "c7fd7df1b3c4d7b98c1821a4b4fc402f875c3f5828c2f5be12765780798fdb704b1c2b6b2c07a0bd28253542543268559c5af15a6952502d23178070c5764d56";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "97.0b5";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/97.0b5/linux-x86_64/en-US/firefox-97.0b5.tar.bz2";
      sha512 =
        "a9e1f6c939e4e24b184f748e2f5ddc0845f2182b166a7d55af59cc13b074ebbb03eab5bda25b3096b437d88e61ee7820ec48d6fa273d0d81644bdf3359226cfd";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
