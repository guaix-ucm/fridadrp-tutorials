#!/bin/bash

# Note: this script is executed by ../../../../Makefile
# (it is not intended to be executed locally)
local_dir="`pwd`/tutorials/auxiliary_tools/data_cube_mosaics/files"
fname="${local_dir}/terminal_output_adr_correction_from_extension_test1b"
input="${fname}.txt"

# Note: to identify line numbers, it is useful to use:
# $ cat -n filename.txt
# (enlarge the terminal)
#------------------------------------------------------------------------------
output="${fname}_00.md"
./extract_blocks_ansi.sh \
  "$input" "${output}" 1 -1
#------------------------------------------------------------------------------
