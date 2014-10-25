#!/bin/sh

VERSION="1.0"

pkgbuild --root ../../data --identifier org.dreamchess.Music --version ${VERSION} --install-location /Library/Application\ Support/DreamChess "music.pkg"
sed "s/\$VERSION/$VERSION/g" Distribution.xml.in > Distribution.xml
productbuild --distribution Distribution.xml --resources ../.. "DreamChess Music $VERSION.pkg"
