## autogenerated
self: super: let
  common = {
    applicationName = "firefox";
    pname = "firefox-bin";
    desktopName = "Firefox";
  };
in {
  firefox-stable = let
    version = "131.0.2";
    sources = {
      url = "https://download.cdn.mozilla.net/pub/firefox/releases/131.0.2/linux-x86_64/en-US/firefox-131.0.2.tar.bz2";
      sha512 = "58dcb12bb41f3223bf547644c2fb1246e4c36bff9675b05e017923f6f7576a58f3a4d7a53ce7ba6290d844c4aa133e11e30e61f2166a6501b7db0311606e59c7";
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
    version = "128.3.1esr";
    sources = {
      url = "https://download.cdn.mozilla.net/pub/firefox/releases/128.3.1esr/linux-x86_64/en-US/firefox-128.3.1esr.tar.bz2";
      sha512 = "58dcb12bb41f3223bf547644c2fb1246e4c36bff9675b05e017923f6f7576a58f3a4d7a53ce7ba6290d844c4aa133e11e30e61f2166a6501b7db0311606e59c7";
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
    version = "132.0b5";
    sources = {
      url = "https://download.cdn.mozilla.net/pub/firefox/releases/132.0b5/linux-x86_64/en-US/firefox-132.0b5.tar.bz2";
      sha512 = "5e7edaea24d3521b0dff9af2aa3938388f3f9b98904d0688fe4e7452324969b4e8a7a12e09e6ffce3f39c828da287b1bf1200d45871e52192104757bd6187c8c";
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
