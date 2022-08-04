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
   case1=$(echo "cat")
   case2=$(echo  "dog")
   case3=$(echo "bird")
   
   sub1=$(echo "images/cat")
   sub2=$(echo "images/dog")
   sub3=$(echo "images/bird")

   w1=$(echo "Artwork")
   w2=$(echo "Baby")
   w3=$(echo "Funny")
   w4=$(echo "Historical")
   w5=$(echo "Normal")

  ###if animal maches, move
  if [[ ${animal} == ${case1} && ${description} == ${w1} ]]; then
     mv ${image_name} ${sub1}/${w1}
  elif [[ ${animal} == ${case1} && ${description} == ${w2} ]]; then
     mv ${image_name} ${sub1}/${w2}
  elif [[ ${animal} == ${case1} && ${description} == ${w3} ]]; then
     mv ${image_name} ${sub1}/${w3}
  elif [[ ${animal} == ${case1} && ${description} == ${w4} ]]; then
     mv ${image_name} ${sub1}/${w4}
  elif [[ ${animal} == ${case1} && ${description} == ${w5} ]]; then
     mv ${image_name} ${sub1}/${w5}
  elif [[ ${animal} == ${case2} && ${description} == ${w1} ]]; then
     mv ${image_name} ${sub2}/${w1}
  elif [[ ${animal} == ${case2} && ${description} == ${w2} ]]; then
     mv ${image_name} ${sub2}/${w2}
  elif [[ ${animal} == ${case2} && ${description} == ${w3} ]]; then
     mv ${image_name} ${sub2}/${w3}
  elif [[ ${animal} == ${case2} && ${description} == ${w4} ]]; then
     mv ${image_name} ${sub2}/${w4}
  elif [[ ${animal} == ${case2} && ${description} == ${w5} ]]; then
     mv ${image_name} ${sub2}/${w5}
  elif [[ ${animal} == ${case3} && ${description} == ${w1} ]]; then
     mv ${image_name} ${sub3}/${w1}
  elif [[ ${animal} == ${case3} && ${description} == ${w2} ]]; then
     mv ${image_name} ${sub3}/${w2}
  elif [[ ${animal} == ${case3} && ${description} == ${w3} ]]; then
     mv ${image_name} ${sub3}/${w3}
  elif [[ ${animal} == ${case3} && ${description} == ${w4} ]]; then
     mv ${image_name} ${sub3}/${w4}
  elif [[ ${animal} == ${case3} && ${description} == ${w5} ]]; then
     mv ${image_name} ${sub3}/${w5}
  fi
##in what file we execute  this
done < Annotations.txt

#Remember!
# bash ./lco_image_sorting_script.sh
