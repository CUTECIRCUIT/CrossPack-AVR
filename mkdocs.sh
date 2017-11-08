#!/bin/sh
#
#  mkdocs.sh
#  CrossPack-AVR
#

pkgUnixName=CrossPack-AVR
pkgPrettyName="CrossPack for AVR Development"
pkgVersion=20170210

prefix="/usr/local/$pkgUnixName-$pkgVersion"

# manual
(
    cd manual-source
    ./mkmanual.sh "$prefix" "$pkgPrettyName"
)
rm -rf "$prefix/manual"
mv "manual" "$prefix/"


