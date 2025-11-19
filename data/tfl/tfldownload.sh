#!/bin/bash

URL="https://crowding.data.tfl.gov.uk/"

# Fetch the HTML directory listing
curl "$URL" > directory-listing.html

# Extract all links ending in .csv, .xlsx, .txt, etc.
grep -oP '(?<=href=")[^"]*' directory-listing.html | grep -E '\.(csv|xlsx|txt|zip)$' | while read -r file; do
    # Handle both relative and absolute links
    if [[ $file == http* ]]; then
        curl -O "$file"
    else
        curl -O "$URL$file"
    fi
done

