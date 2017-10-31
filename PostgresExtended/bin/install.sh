#!/usr/bin/env bash

EXTENSIONS="$1"

echo "> Will install extensions: $EXTENSIONS"

for EXTENSION in $EXTENSIONS;
do
    echo ">>> Installing now $EXTENSION"
    source /extensions_installer/extensions/$EXTENSION/install.sh
done