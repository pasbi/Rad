#!/usr/bin/env bash

for f in *.md; do
  echo "process $f"
  ./replace-images.py $f
done

