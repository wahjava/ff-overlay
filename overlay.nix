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
    version = "122.0.1";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/122.0.1/linux-x86_64/en-US/firefox-122.0.1.tar.bz2";
      sha512 =
        "31c0a1aeb9688820d55895cefa4aff5c4396ee82999a5e6a6c0c73ea326528bf6d72a0bdaf009c67de0dfc3001b519c91cc3bf233d716a63d8e2ae5d8084074a";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-esr = let
    version = "115.7.0esr";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/115.7.0esr/linux-x86_64/en-US/firefox-115.7.0esr.tar.bz2";
      sha512 =
        "31c0a1aeb9688820d55895cefa4aff5c4396ee82999a5e6a6c0c73ea326528bf6d72a0bdaf009c67de0dfc3001b519c91cc3bf233d716a63d8e2ae5d8084074a";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
  firefox-devel = let
    version = "123.0b9";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/123.0b9/linux-x86_64/en-US/firefox-123.0b9.tar.bz2";
      sha512 =
        "bcddc2c6dc6ed3103a12baa0b19b68641d480ae9519c5d4ee4be4179c9b0d2c1679247bb62bab842ddb1be391605edcfd4f8cb84ea6f22c149d86d8d99f31d6d";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
