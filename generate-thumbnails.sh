#!/usr/bin/env bash

cd media
size=128
size="${size}x${size}"
for f in *; do
  thumbf="thumb-$f"
  if [ -f "$thumbf" ]; then
    echo "Skip existing $thumbf"
  elif [[ "$f" != thumb-* ]]; then
    echo "Convert $f -> $thumbf"
    convert "$f" -resize "$size^" -gravity Center -extent "$size" "thumb-$f"
  fi
done



