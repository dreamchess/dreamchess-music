#!/bin/sh

VERSION="1.0"
TMPDIR=`mktemp -d` || exit 1

# Remove hidden files
cd ../..
find data | grep -v '/\.' | cpio -dump $TMPDIR/

cp LICENSE $TMPDIR
cd pkg/unix
cp setup.sh $TMPDIR

makeself $TMPDIR dreamchess-music-$VERSION.run "DreamChess Music Pack $VERSION" ./setup.sh

rm -rf $TMPDIR
