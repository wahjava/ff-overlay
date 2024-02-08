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
    version = "123.0b8";
    sources = {
      url =
        "https://download.cdn.mozilla.net/pub/firefox/releases/123.0b8/linux-x86_64/en-US/firefox-123.0b8.tar.bz2";
      sha512 =
        "5072a885c2b50273133db4ea280d06225f9ffe384b5ae04eee4a05545824d8908ef91732f1028e57e660c83544a0a1fb58b4ce7ce74759afb89ff777aa9f9b86";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = { inherit version sources; };
  }).overrideAttrs (old: { src = super.fetchurl sources; })) common;
}
