## autogenerated
self: super: let
  common = {
    applicationName = "firefox";
    pname = "firefox-bin";
    desktopName = "Firefox";
  };
in {
  firefox-stable = let
    version = "131.0";
    sources = {
      url = "https://download.cdn.mozilla.net/pub/firefox/releases/131.0/linux-x86_64/en-US/firefox-131.0.tar.bz2";
      sha512 = "889c4e20225b3ce7d6cb18da8308d68daf5775b743f15a908d87550ac72a3cdaa7b35389abbee4dbb5ffa2ce624ceb91f6141ee4abde82c44d33ca90b95f75ad";
    };
  in
    super.wrapFirefox ((self.firefox-bin-unwrapped.override {
        generated = {
          inherit version sources;
        };
      })
      .overrideAttrs (old: {src = super.fetchurl sources;}))
    common;
  firefox-esr = let
    version = "128.3.0esr";
    sources = {
      url = "https://download.cdn.mozilla.net/pub/firefox/releases/128.3.0esr/linux-x86_64/en-US/firefox-128.3.0esr.tar.bz2";
      sha512 = "889c4e20225b3ce7d6cb18da8308d68daf5775b743f15a908d87550ac72a3cdaa7b35389abbee4dbb5ffa2ce624ceb91f6141ee4abde82c44d33ca90b95f75ad";
    };
  in
    super.wrapFirefox ((self.firefox-bin-unwrapped.override {
        generated = {
          inherit version sources;
        };
      })
      .overrideAttrs (old: {src = super.fetchurl sources;}))
    common;
  firefox-devel = let
    version = "132.0b3";
    sources = {
      url = "https://download.cdn.mozilla.net/pub/firefox/releases/132.0b3/linux-x86_64/en-US/firefox-132.0b3.tar.bz2";
      sha512 = "221ac07ff8d2e7f479cc1b1e1d39b0c8df072356f2c91bf13f7da398c9d8a2e0975840fd28e78db53ca34925c95f11cf2abb3f0e1672fa6b97634b40052cb8a4";
    };
  in
    super.wrapFirefox ((self.firefox-bin-unwrapped.override {
        generated = {
          inherit version sources;
        };
      })
      .overrideAttrs (old: {src = super.fetchurl sources;}))
    common;
}
