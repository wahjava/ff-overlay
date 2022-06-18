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
    version = "101.0.1";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/101.0.1/linux-x86_64/en-US/firefox-101.0.1.tar.bz2";
      sha512 =
        "693d8958bf766d1dffb70d779979ff38338a45ded3175ec8a13a3884f4168286dbbf6b0944649e56e44b825fbad541374202b6d9c67dbaaf492116ccc177616c";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "91.10.0esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/91.10.0esr/linux-x86_64/en-US/firefox-91.10.0esr.tar.bz2";
      sha512 =
        "693d8958bf766d1dffb70d779979ff38338a45ded3175ec8a13a3884f4168286dbbf6b0944649e56e44b825fbad541374202b6d9c67dbaaf492116ccc177616c";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "102.0b9";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/102.0b9/linux-x86_64/en-US/firefox-102.0b9.tar.bz2";
      sha512 =
        "50ed3c3878c4e618f3889e54505154a9f19a70a2fe95c6559e149e8eef790198459e90908aa3fc66bd2e19bf3c83fe847ba5a97d73ac61e2cd6cca8b66a217bb";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
