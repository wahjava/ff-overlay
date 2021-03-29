#!/usr/bin/env nix-shell
#!nix-shell -i bash --pure -p jq -p curl -p nixfmt -p bash

set -ue

JSON_FILE=$(mktemp)
curl -o $JSON_FILE -s https://product-details.mozilla.org/1.0/firefox_versions.json
LATEST_FIREFOX_VERSION=$(cat $JSON_FILE |jq -r .LATEST_FIREFOX_VERSION)
LATEST_FIREFOX_DEVEL_VERSION=$(cat $JSON_FILE |jq -r .LATEST_FIREFOX_DEVEL_VERSION)

if [[ -z "$LATEST_FIREFOX_VERSION" -o -z "$LATEST_FIREFOX_DEVEL_VERSION" ]]; then
    echo Bad firefox_versions.json: $JSON_FILE
    exit 1
fi

LATEST_FIREFOX_SHA512SUM=$(curl -s https://download.cdn.mozilla.net/pub/firefox/releases/${LATEST_FIREFOX_VERSION}/SHA512SUMS | awk '$2 == "linux-x86_64/en-US/firefox-'${LATEST_FIREFOX_VERSION}'.tar.bz2" { print $1; }')
LATEST_FIREFOX_DEVEL_SHA512SUM=$(curl -s https://download.cdn.mozilla.net/pub/firefox/releases/${LATEST_FIREFOX_DEVEL_VERSION}/SHA512SUMS | awk '$2 == "linux-x86_64/en-US/firefox-'${LATEST_FIREFOX_DEVEL_VERSION}'.tar.bz2" { print $1; }')

if [[ -z "$LATEST_FIREFOX_SHA512SUM" -o -z "$LATEST_FIREFOX_DEVEL_SHA512SUM" ]]; then
    echo Missing checksums
    exit 1
fi

LATEST_FIREFOX_TARBALL="https://download.cdn.mozilla.net/pub/firefox/releases/${LATEST_FIREFOX_VERSION}/linux-x86_64/en-US/firefox-${LATEST_FIREFOX_VERSION}.tar.bz2"
LATEST_FIREFOX_DEVEL_TARBALL="https://download.cdn.mozilla.net/pub/firefox/releases/${LATEST_FIREFOX_DEVEL_VERSION}/linux-x86_64/en-US/firefox-${LATEST_FIREFOX_DEVEL_VERSION}.tar.bz2"

cat <<EOF |nixfmt >overlay.nix
## autogenerated by $0
self: super: {
  firefox-stable = let
    version = "$LATEST_FIREFOX_VERSION";
    url = "$LATEST_FIREFOX_TARBALL";
    sha512 = "$LATEST_FIREFOX_SHA512SUM";
    commons = {
      browserName = "firefox";
      pname = "firefox-bin";
      desktopName = "Firefox";
    };
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = {
      inherit version;
      sources = { inherit url sha512; };
    };
  }).overrideAttrs (old: { src = super.fetchurl { inherit url sha512; }; }))
  common;
  firefox-devel = let
    version = "$LATEST_FIREFOX_DEVEL_VERSION";
    url = "$LATEST_FIREFOX_DEVEL_TARBALL";
    sha512 = "$LATEST_FIREFOX_DEVEL_SHA512SUM";
  in super.wrapFirefox ((self.firefox-bin-unwrapped.override {
    generated = {
      inherit version;
      sources = { inherit url sha512; };
    };
  }).overrideAttrs (old: { src = super.fetchurl { inherit url sha512; }; }))
  common;
}
EOF

rm -f $JSON_FILE
