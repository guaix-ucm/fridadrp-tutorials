# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'fridadrp-tutorials'
copyright = '2024, Nicolás Cardiel, Sergio Pascual'
author = 'Nicolás Cardiel, Sergio Pascual'
release = '0.1'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = ['sphinx_rtd_theme', 
              'sphinx_tabs.tabs', 
              'sphinx_copybutton']
copybutton_prompt_text = "(venv_frida) $ "
copybutton_only_copy_prompt_lines = False
# allow to exclude the copybutton in selected blocks
copybutton_selector = "div:not(.no-copybutton) > div.highlight > pre"

templates_path = ['_templates']
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']


# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

#html_theme = 'alabaster'
html_theme = 'sphinx_rtd_theme'
html_logo = 'logo_FRIDA.png'
html_theme_options = {
    'logo_only': False,
}
html_static_path = ['_static']
def setup(app):
    app.add_css_file("custom.css")
