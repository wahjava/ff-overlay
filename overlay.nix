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
    version = "91.0.2";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/91.0.2/linux-x86_64/en-US/firefox-91.0.2.tar.bz2";
      sha512 =
        "3f55759a6a3f976c91153d7629a801b41fd9d1c6003bbca3b4f40474c07daf941c5b226e51915d5c1df3d023f2eac91ab4c42d7606b64dcfdeca6144c180a1ff";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "78.13.0esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/78.13.0esr/linux-x86_64/en-US/firefox-78.13.0esr.tar.bz2";
      sha512 =
        "3f55759a6a3f976c91153d7629a801b41fd9d1c6003bbca3b4f40474c07daf941c5b226e51915d5c1df3d023f2eac91ab4c42d7606b64dcfdeca6144c180a1ff";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "92.0b8";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/92.0b8/linux-x86_64/en-US/firefox-92.0b8.tar.bz2";
      sha512 =
        "f5d0fc2f649e80421a4a9a824e9ed6e266d2b9ded49a1e1be07a261019d152098d0eb9d00e0ed9269b2c19f35506ad4ccc73de9c840bc337d0a4b261ee64fa73";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
