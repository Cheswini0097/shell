#!/bin/bash
read -p "Enter the String" string
string=$(echo $string | tr '[:upper:]' '[:lower:]' )
vowels=$(echo $string | grep  "[aeiou]" $string)
echo "vovels in the string are: " , $vowels

|

