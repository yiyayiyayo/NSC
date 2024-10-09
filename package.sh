#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No version provided. Usage: ./package.sh <version>"
    exit 1
fi

if [ ! -e "output" ]; then
    mkdir output
fi

zip -r output/NSC.$1.alfredworkflow ./* -x '.*' -x './output/*' -x package.sh