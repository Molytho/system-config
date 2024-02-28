#!/usr/bin/bash

if [ -z ${SKIP_CROP+x} ]; then
    thumbnail_path=$(basename "$1" .webm).webp
    echo Converting $thumbnail_path to 1:1

    convert -crop 1:1 -gravity Center "$thumbnail_path" "$thumbnail_path"
else
    echo Skipping due to SKIP_CROP
    exit 0
fi

