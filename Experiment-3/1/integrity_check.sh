#!/bin/bash

# File to monitor
FILE="file.txt"

# Hash storage file
HASH_FILE="file_hash.md5"

# Generate and store hash if not exists
if [ ! -f "$HASH_FILE" ]; then
    md5sum "$FILE" > "$HASH_FILE"
    echo "Initial hash stored in $HASH_FILE"
    exit 0
fi

# Compute current hash
CURRENT_HASH=$(md5sum "$FILE" | awk '{print $1}')
STORED_HASH=$(awk '{print $1}' "$HASH_FILE")

# Compare hashes
if [ "$CURRENT_HASH" == "$STORED_HASH" ]; then
    echo "The file '$FILE' has NOT been altered."
else
    echo "The file '$FILE' has been altered!"
fi
