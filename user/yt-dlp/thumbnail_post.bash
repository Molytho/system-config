#!/usr/bin/bash

if [ -z ${1+x} ]; then exit 1; fi

file_base="${1%.webm}"

find_thumbnail() {
    local candidate
    for candidate in "$file_base."{jpg,png,webp,jpeg}
    do
        if [ -f "$candidate" ]
        then
            thumbnail="$candidate"
            return
        fi
    done
    echo "No thumbnail candidate available"
    exit 0
}
find_thumbnail

echo "Converting $thumbnail to 1:1"
magick "$thumbnail" -gravity Center -crop 1:1 "$thumbnail"

exit 0