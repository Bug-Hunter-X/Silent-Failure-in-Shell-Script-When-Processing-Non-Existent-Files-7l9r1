#!/bin/bash

# This script attempts to process a list of files, but it has a subtle bug.
# It fails to handle files that do not exist.

files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for file in "${files[@]}"; do
  # The bug is here: if a file does not exist, this line will fail silently
  # and subsequent processing might be impacted
  cat "$file" >> output.txt
done