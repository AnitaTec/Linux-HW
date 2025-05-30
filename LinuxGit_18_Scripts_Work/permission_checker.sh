#!/bin/bash

DIRECTORY="/opt/280225-wdm"

for file in "$DIRECTORY"/*.sh; do
  if [ -f "$file" ]; then
    chmod +x "$file"
  fi
done
