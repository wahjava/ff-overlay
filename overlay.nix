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
    version = "114.0.1";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/114.0.1/linux-x86_64/en-US/firefox-114.0.1.tar.bz2";
      sha512 =
        "aa9b96158b875152af13c33d2b6eaa97424ae9556242bb26f71829f762fef918d07fe6c43e276087c600fb81cde3d54ac254bca942bdb7959bfa23fbfcdc1d8f";
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
        "aa9b96158b875152af13c33d2b6eaa97424ae9556242bb26f71829f762fef918d07fe6c43e276087c600fb81cde3d54ac254bca942bdb7959bfa23fbfcdc1d8f";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "115.0b3";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/115.0b3/linux-x86_64/en-US/firefox-115.0b3.tar.bz2";
      sha512 =
        "f89e88591d52268492c30e71ea991c4ce4912fac71f6643566ea6142149174cf022e93a6b83259a4819b48419ad70537623680bb7a20ba82d7e7dcc80b5378ec";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
