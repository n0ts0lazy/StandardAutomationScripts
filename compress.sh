#!/bin/bash

# Set the directory where the script is located
script_dir=$(dirname "$0")

# Check if the zip file already exists, and delete it if it does
if [ -e "$script_dir/currentbuildtoshare.zip" ]; then
    rm "$script_dir/currentbuildtoshare.zip"
    echo "Deleted existing ZIP."
fi

# Create a temporary file to store the list of files
tempfile=$(mktemp)
echo "Compressing to live ZIP."

# Use the find command to list all '.py' files and add them to the list
find "$script_dir" -maxdepth 1 -type f -name '*.py' >> "$tempfile"
# Can replace '*.py' with your scripting language for same result

# Example
# find "$script_dir" -maxdepth 1 -type f -name '*.js' >> "$tempfile"

# Add 'requirements.txt' to the list of files
echo "$script_dir/requirements.txt" >> "$tempfile"

# Add 'README.md' to the list of files
echo "$script_dir/README.md" >> "$tempfile"

# Add any other text file to the folder
find "$script_dir" -maxdepth 1 -type f -name '*.txt' >> "$tempfile"

# Add configuration file to the compression as well
find "$script_dir" -maxdepth 1 -type f -name '*.ini' >> "$tempfile"
# Create the zip file
zip "$script_dir/currentbuildtoshare.zip" -@ < "$tempfile"

# Clean up the temporary file
rm "$tempfile"
