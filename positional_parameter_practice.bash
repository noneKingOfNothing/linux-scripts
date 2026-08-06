#!/bin/bash

# $0 is the script name
echo "Script name: $0"

# $# indicates how many arguments were supplied to the program
echo "Total arguments passed :$#"

# Check if at least two arguments were provided
if [ "$#" -lt 2 ]; then
    echo "Usage: $0 <first_name> <last_name>"
    exit 1
fi

# $1 and $2 capture the first two arguments
echo "Hello, $1 $2!"

# $@ captures everything
echo "All arguments supplied: $@"
# $0 is the script name
echo "Script name: $0"

# $# indicates how many arguments were supplied to the program
echo "Total arguments passed :$#"

# Check if at least two arguments were provided
if [ "$#" -lt 2 ]; then
    echo "Usage: $0 <first_name> <last_name>"
    exit 1
fi

# $1 and $2 capture the first two arguments
echo "Hello, $1 $2!"

# $@ captures everything
echo "All arguments supplied: $@"