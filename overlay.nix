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
    version = "107.0";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/107.0/linux-x86_64/en-US/firefox-107.0.tar.bz2";
      sha512 =
        "0e9725d40278703545187178a1104d0ed0f0b08d61444b95e0f51b66f2f9ae8313d8cda4e19665e05bf27660dd18166b37c0bd1a523185dbc0f81dbc5edc5915";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "102.5.0esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/102.5.0esr/linux-x86_64/en-US/firefox-102.5.0esr.tar.bz2";
      sha512 =
        "0e9725d40278703545187178a1104d0ed0f0b08d61444b95e0f51b66f2f9ae8313d8cda4e19665e05bf27660dd18166b37c0bd1a523185dbc0f81dbc5edc5915";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "108.0b7";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/108.0b7/linux-x86_64/en-US/firefox-108.0b7.tar.bz2";
      sha512 =
        "f33166b1cc24480443abfd45d17345c5833df1e6e8eed4b78b9aa74df3bcda83b71c929d76d56d0cc0469b0e73af7dd842077d5a185527da8e3c355edb35e39f";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
