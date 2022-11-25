#!/bin/bash

# cd public/assets/images/players
cd public/assets/images/races

for file in *jpg
do
    # cwebp $jpg -o $jpg
    # cwebp $file -o ${file%.*}.webp
    cwebp -q 90 -metadata icc -sharp_yuv -o ${file%.*}.webp $file
done
