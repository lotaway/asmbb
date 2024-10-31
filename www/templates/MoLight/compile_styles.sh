#!/usr/bin/bash

for file in ./*.less
do
  echo "Compile $file --> ${file%.*}.css"
  lessc "$file" "${file%.*}.css"

done
