#!/bin/bash

# Note: this script is executed by Makefile
# (it is not intended to be executed locally)

# Check number of arguments
if [ "$#" -ne 2 ]; then
    echo "$#"
    echo "Usage: $0 output_dir script_name"
    exit 1
fi

local_dir="$1"
fdum="$2"

txtfile="${local_dir}/version_${fdum}.txt"
mdfile0="${local_dir}/version_${fdum}.md0"
mdfile="${local_dir}/version_${fdum}.md"
echo "\`\`\`console" > ${mdfile0}
echo "(venv_numina) \$ ${fdum} --version" >> ${mdfile0}
echo "\`\`\`" >> ${mdfile0}
echo "" >> ${mdfile0}
FORCE_COLOR=1 ${fdum} --version > ${txtfile}
num_lines=$(wc -l < "${txtfile}")
./extract_blocks_ansi.sh "${txtfile}" "${mdfile}" 1 "${num_lines}"
cat ${mdfile} >> ${mdfile0}
\mv ${mdfile0} ${mdfile}
\rm ${txtfile}
