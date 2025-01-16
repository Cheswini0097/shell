#!/bin/bash
read -p "Enter the String" string
string=$(echo $string | tr '[:upper:]' '[:lower:]' )
count=$(echo $string | grep  "[aeiou]")

|

