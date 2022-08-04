#! /usr/bin/env bash

#Read the document and loop
while read line; do
##variables
image_name=$(echo "${line}" | cut -f1)
###echo print the whole line of the document
### cut cut the first columne of each line
animal=$(echo "${line}" | cut -f3)
### in animal we cut the third columne
description=$(echo "${line}" | cut -f4)
##order variables in a line
echo "${image_name}    ${animal}    ${description}"
##make subdirectories
mkdir -p images/${animal}/${description}
##conditional with AND &&
if [[ ${animal} == "cat" && ${description} == "Artwork" ]]; then
