#!/bin/bash
cd
# Create script file
touch hello.sh

# Owner execute permission
chmod u+x hello.sh

# Runs script
./hello.sh

# Displays source code
cat hello.sh

echo "Number of arguments supplied: $#"

for item in "$@"
do
	if [ -f "$item" ]
	then
		echo "$item is a file"
		lines=$(wc -l < "$item")
		echo "Number of lines: $lines"
	elif [ -d "$item" ]
	then
		echo "$item is a directory"
	else
		echo "$item does not exist"
	fi
done