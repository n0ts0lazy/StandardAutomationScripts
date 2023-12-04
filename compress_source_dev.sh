#!/bin/bash

# Call for creating a build from the current code
./compress.sh

# Launch Visual Studio Code
echo "Launching Visual Studio Code."
code . &

# Script location
echo "Loading into source with terminal."
# Replace sitePackage" with your environment folder
activate_script="./sitePackage/bin/activate"

# Start a new interactive shell with the virtual environment activated
bash --rcfile <(echo "source $activate_script")
