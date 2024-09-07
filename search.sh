#!/bin/bash

read -r -p "Search Term:" searchterm

read -r -p "Output file:" OUT

# Check if output provided
if [ -z "$OUT" ]; then
    
    find | grep "$searchterm"
    exit 1
fi


find | grep "$searchterm" > "$OUT"
