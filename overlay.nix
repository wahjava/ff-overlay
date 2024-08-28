## autogenerated
self: super: let
  common = {
    applicationName = "firefox";
    pname = "firefox-bin";
    desktopName = "Firefox";
  };
in {
  firefox-stable = let
    version = "129.0.2";
    sources = {
      url = "https://download.cdn.mozilla.net/pub/firefox/releases/129.0.2/linux-x86_64/en-US/firefox-129.0.2.tar.bz2";
      sha512 = "45efa3576f1c5677162c7fec48b2bf6df6c741af84952249193cf62f60b98e5edb8539ab4bd21f3be27d209bb60c5b61b4be60da9ca5ea047a11b60b4549452a";
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
    version = "115.14.0esr";
    sources = {
      url = "https://download.cdn.mozilla.net/pub/firefox/releases/115.14.0esr/linux-x86_64/en-US/firefox-115.14.0esr.tar.bz2";
      sha512 = "45efa3576f1c5677162c7fec48b2bf6df6c741af84952249193cf62f60b98e5edb8539ab4bd21f3be27d209bb60c5b61b4be60da9ca5ea047a11b60b4549452a";
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
    version = "130.0b9";
    sources = {
      url = "https://download.cdn.mozilla.net/pub/firefox/releases/130.0b9/linux-x86_64/en-US/firefox-130.0b9.tar.bz2";
      sha512 = "559459a7f8ae81685a1203315424123e3401f295387c6cfba9279dd273f8aecedc9d538b492c0846b9f3a62592b9f806dfb7fd4c1312ad299a622de60806c3cb";
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
