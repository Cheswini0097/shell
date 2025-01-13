#!/bin/bash
#index starts from 0
Cities=("Bengaluru" "Mumbai" "Kolkata")
echo "first city i visted is: ${Cities[0]}"
echo "second city i visted is:${Cities[1]}"
echo "third city i visted is:${Cities[2]}"
echo "total cities i visted till now is:${Cities[@]}"