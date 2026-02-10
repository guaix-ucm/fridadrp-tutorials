#!/bin/bash

# Check minimum number of arguments
if [ "$#" -lt 4 ]; then
    echo "Usage: $0 input.txt output.txt start1 end1 [start2 end2 ...]"
    exit 1
fi

input="$1"
output="$2"

# Clear output file
> "$output"

# insert Myst code to insert the code-block
# (use single quotes to avoid problems with backticks and curly braces)
echo '```{code-block} ansi-shell-session' >> "$output"
echo ':class: my-special-block no-copybutton' >> "$output"
echo '' >> "$output"

# Shift past input and output arguments
shift 2

# Process pairs of line ranges
while [ "$#" -ge 2 ]; do
    start="$1"
    end="$2"

    if [ "$start" -eq 0 ] && [ "$end" -eq 0 ]; then
        echo "..." >> "$output"
        echo "..." >> "$output"
    else
        sed -n "${start},${end}p" "$input" >> "$output"
    fi

    shift 2
done

# insert Myst code to close the code-block
echo '```' >> "$output"

# display name of output file
echo "${output} generated"

