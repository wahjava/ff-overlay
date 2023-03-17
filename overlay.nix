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
    version = "111.0";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/111.0/linux-x86_64/en-US/firefox-111.0.tar.bz2";
      sha512 =
        "c55c7e654aa8a5045ea7f39378c546276f3e42c8e594cbce222038ed2cde69933cb935dbab6e9c612c7dc04da7ce5d423577384c221c4b337ee2320547483919";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "102.9.0esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/102.9.0esr/linux-x86_64/en-US/firefox-102.9.0esr.tar.bz2";
      sha512 =
        "c55c7e654aa8a5045ea7f39378c546276f3e42c8e594cbce222038ed2cde69933cb935dbab6e9c612c7dc04da7ce5d423577384c221c4b337ee2320547483919";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "112.0b3";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/112.0b3/linux-x86_64/en-US/firefox-112.0b3.tar.bz2";
      sha512 =
        "a9ac4e0f2d301ef0524e41b12770d809724480871b56c442c4813d195ab3e2e246832029d39f7d52ec2ba367eaf3754a38e7cc5d4062eb802d71bdacc635c281";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
