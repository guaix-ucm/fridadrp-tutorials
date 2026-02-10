#!/bin/bash

# Note: this script is executed by ../../../Makefile
# (it is not intended to be executed locally)
local_dir="`pwd`/tutorials/ifu_simulator/files"

./extract_ansi_help1.sh ${local_dir} fridadrp-ifu_simulator
./extract_ansi_help2.sh ${local_dir} fridadrp-ifu_simulator
