#!/bin/bash

# Note: this script is executed by ../../../../Makefile
# (it is not intended to be executed locally)
local_dir="`pwd`/tutorials/auxiliary_tools/initial_slice_boundaries/files"
fname="${local_dir}/terminal_output_find_traces1"
input="${fname}.txt"

# Note: to identify line numbers, it is useful to use:
# $ cat -n filename.txt
# (enlarge the terminal)
#------------------------------------------------------------------------------
output="${fname}_00.md"
./extract_blocks_ansi.sh \
  "$input" "${output}" 1 16
#------------------------------------------------------------------------------
output="${fname}_01.md"
./extract_blocks_ansi.sh \
  "$input" "${output}" 17 36
#------------------------------------------------------------------------------
output="${fname}_02.md"
./extract_blocks_ansi.sh \
  "$input" "${output}" 37 37
#------------------------------------------------------------------------------
output="${fname}_03.md"
./extract_blocks_ansi.sh \
  "$input" "${output}" 38 38
#------------------------------------------------------------------------------
output="${fname}_04.md"
./extract_blocks_ansi.sh \
  "$input" "${output}" 39 39
#------------------------------------------------------------------------------
output="${fname}_05.md"
./extract_blocks_ansi.sh \
  "$input" "${output}" 40 40
#------------------------------------------------------------------------------
output="${fname}_06.md"
./extract_blocks_ansi.sh \
  "$input" "${output}" 41 42
#------------------------------------------------------------------------------
output="${fname}_07.md"
./extract_blocks_ansi.sh \
  "$input" "${output}" 43 43
#------------------------------------------------------------------------------
output="${fname}_08.md"
./extract_blocks_ansi.sh \
  "$input" "${output}" 44 44
#------------------------------------------------------------------------------
output="${fname}_09.md"
./extract_blocks_ansi.sh \
  "$input" "${output}" 45 45
#------------------------------------------------------------------------------
output="${fname}_10.md"
./extract_blocks_ansi.sh \
  "$input" "${output}" 46 46
#------------------------------------------------------------------------------
output="${fname}_11.md"
./extract_blocks_ansi.sh \
  "$input" "${output}" 47 47
#------------------------------------------------------------------------------
output="${fname}_12.md"
./extract_blocks_ansi.sh \
  "$input" "${output}" 48 -1
#------------------------------------------------------------------------------
