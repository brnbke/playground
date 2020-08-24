#!/usr/bin/env bash
OUTPUT="properties"
readonly OUTPUT

# Update docker image and populate with latest jsonnet files
find . -type f -iname "_compose.jsonnet" -print0 | while IFS= read -r -d $'\0' file; do
  tmp="${file/jsonnet/${OUTPUT}}"
  outputPath="${tmp/_compose.jsonnet/}"
  mkdir -pv $outputPath
  #docker run -v $(pwd)/${OUTPUT}:/usr/src/${OUTPUT} jsonnet/build:latest $file -m $outputPath
  jsonnet $file -m $outputPath
done

node styleDictionary
