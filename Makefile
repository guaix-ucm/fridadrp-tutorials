# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = tutorials
BUILDDIR      = build

# [NCL] Detect if running on GitHub Actions
ifeq ($(CI),true)
    ON_GITHUB = true
else
    ON_GITHUB = false
endif

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile clean  # [NCL]: added clean to the .PHONY declaration

# [NCL]: create explicit clean target that only runs sphinx-build
clean:
	@$(SPHINXBUILD) -M clean "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
ifneq ($(ON_GITHUB),true)
	@echo "Running preliminary scripts..."
	tutorials/ifu_simulator/files/run_extract_blocks_ansi_version.sh
	tutorials/ifu_simulator/files/run_extract_blocks_ansi_helps.sh
else
	@echo "Skipping preliminary scripts (GitHub build, using committed files)..."
endif
	@echo "Generating documentation now..."
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
