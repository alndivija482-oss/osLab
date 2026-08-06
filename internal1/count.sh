#!/bin/bash
echo "Enter directory path:"
read path
echo "Files: $(find "$path" -type f | wc -l)"
echo "Directories: $(find "$path" -type d | wc -l)"
