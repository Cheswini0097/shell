#!/bin/bash
read -p "Enter the String" string
string=$(echo $string | tr '[:upper:]' '[:lower:]' )
vovels=$(echo $string | grep  "[aeiou]" | wc -l)
echo "Number of vovels in the string: $vovels"


