#!/bin/bash

input_file="input.txt"
temp_file="temp_output.txt"

if [[ ! -f "$input_file" ]]; then
    echo "Error: File '$input_file' not found!"
    exit 1
fi

awk 'NR < 5 {print; next}
     /welcome/ {gsub(/give/, "learning")}
     {print}' "$input_file" > "$temp_file"

mv "$temp_output" "$input"
