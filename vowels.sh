#!/bin/bash

read -p "Enter a string: " input_string

# Convert the string to lowercase to handle both uppercase and lowercase vowels
input_string=$(echo "$input_string" | tr '[:upper:]' '[:lower:]')

# Initialize a variable to store the count of vowels
vowel_count=0

# Loop through each character in the string
for (( i=0; i<${#input_string}; i++ )); do
    char=${input_string:$i:1}
    if [[ "$char" =~ [aeiou] ]]; then
        ((vowel_count++))
    fi
done

echo "The string contains $vowel_count vowels."