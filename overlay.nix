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
    version = "116.0";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/116.0/linux-x86_64/en-US/firefox-116.0.tar.bz2";
      sha512 =
        "8ea18e2256cf452b62bc75ff1395091d9bf4a69ea35f0e198a6eb6cebccede16f674741ee6c92bb1f72282ec5ed82675eadd0c30fc1b2e9593dec3e8f29858a5";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "102.14.0esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/102.14.0esr/linux-x86_64/en-US/firefox-102.14.0esr.tar.bz2";
      sha512 =
        "8ea18e2256cf452b62bc75ff1395091d9bf4a69ea35f0e198a6eb6cebccede16f674741ee6c92bb1f72282ec5ed82675eadd0c30fc1b2e9593dec3e8f29858a5";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "117.0b2";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/117.0b2/linux-x86_64/en-US/firefox-117.0b2.tar.bz2";
      sha512 =
        "f9ebe7ac4580cc7d40c75374bef9f64ee71a7ac0b88a4993b309f3f982956cb5891a9e6b085a73f2684a2d3cde3261d929ac3c01b18af90d1b84cbc26e4f79b0";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
