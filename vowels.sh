#!/bin/bash
read -p "enter the string: " String
string=$(echo $string  | tr '[:upper:]' '[:lower:]')
vowels_count=$(echo $string | grep -o -i "[aeiou]" | wc -l)
vovels=$(echo $string | grep -o -i "[aeiou]")
echo "number of vowels in the string: $vowels_count"
echo "Vovels in the string: $vovels"  
