#!/bin/bash

target="../../auxiliary_tools/mosaics/m51_dss1.fits"
link_name="m51_dss1.fits"

if [[ -L "$link_name" ]]; then
    echo "Symbolic link already exists"
elif [[ -e "$link_name" ]]; then
    echo "Error: $link_name exists but is not a symbolic link"
    exit 1
else
    ln -s "$target" "$link_name"
    echo "Created link"
fi

#------------------------------------------------------------------------------

# Store the command in a variable using a here-document
read -r -d '' COMMAND << 'EOF'
fridadrp-ifu_simulator \
  --scene scene03.yaml \
  --flux_factor 10 \
  --grating medium-K \
  --scale fine \
  --bias 0 \
  --rnoise 0 \
  --flatpix2pix none \
  --seed 1234 \
  --output_dir work \
  --record
EOF

# Execute the command
echo "$COMMAND"
eval "$COMMAND" || exit 1

../../../extract_blocks_ansi.sh \
  work/terminal_output.txt \
  terminal_output.md 1 -1

echo "\`\`\`{code-block}" > header_test_ifu_3D_method0.txt
echo ":class: my-special-block no-copybutton" >> header_test_ifu_3D_method0.txt
echo " " >> header_test_ifu_3D_method0.txt
fitsheader work/test_ifu_3D_method0.fits >> header_test_ifu_3D_method0.txt
echo "\`\`\`" >> header_test_ifu_3D_method0.txt
echo "header_test_ifu_3D_method0.txt generated"

# Save command to file (preserving backslashes)
echo "\`\`\`{code-block} console" > last_command.txt
echo -n "(venv_frida) $ " >> last_command.txt
echo "$COMMAND" >> last_command.txt
echo "\`\`\`" >> last_command.txt
echo "last_command.txt generated"

# generate PNG files for documentation
for f in \
  test_ifu_white2D_method0_os10 \
  test_ifu_white2D_method0_os1 \
  test_rss_2D_method0 \
  test_detector_2D_method0 \
  test_rss_2D_method1; do
    echo "Working with image: ${f}"
    numina-ximshow work/${f}.fits --cbar_orientation vertical \
      --z1z2 minmax --aspect equal --png ${f}.png --factor_macosx 1.5
done

output="projected_3D_method0.png"
echo "Working with ${output}"
numina-extract_2d_slice_from_3d_cube \
  work/test_ifu_3D_method0.fits --png ${output}

output="projected_3D_method1.png"
numina-extract_2d_slice_from_3d_cube \
  work/test_ifu_3D_method1.fits --png ${output}

# do not use .md as extension
sed 's/sceneXX/scene03/g' ../common_example_block.txt > example_results.txt
