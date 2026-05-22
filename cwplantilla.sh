#!/bin/bash
day=$(date +%d_%m)
nprac=$(ls -d */ | wc -l) 
dirName=prac${nprac}-${day}

mkdir ${dirName}
cp -r plantillaWeb/* ${dirName}
touch ${dirName}/apunte${day}.md
echo se creo $dirName
