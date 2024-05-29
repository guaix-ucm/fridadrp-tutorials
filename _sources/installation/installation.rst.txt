Installing the development version
==================================

In order to keep your current Python installation clean, it is highly
recommended to install a Python 3 *virtual environment* as a first step.

Creating and activating the python virtual environment
------------------------------------------------------

The following describes two different ways to generate a Python environment:
``venv`` and ``conda``.

Using ``venv``
..............

Suppose we want to generate a virtual environment that hangs directly from the
user's root directory. In that case, we must execute the following
instructions:

.. code-block:: console

   $ cd
   $ python3 -m venv venv_frida

Note that the above process generates a folder called ``venv_frida`` just below
the root directory. It is also possible to specify an alternative path and name
to generate the desired environment. It is important to remember the location
and name of this directory if we later need to remove the environment from the
system.

To activate the environment:

.. code-block:: console

   $ . venv_frida/bin/activate
   (venv_frida) $

From now on, the prompt

.. code-block:: console

   (venv_frida) $

will indicate that we are working in this specific environment.

To stop using this environment, we only need to execute the following command:

.. code-block:: console

   (venv_frida) $ deactivate
   $

For more information on the use of virtual environments, it is advisable to
consult the `venv documentation
<https://docs.python.org/3/library/venv.html>`_.

Using ``conda``
...............

Conda users can also easily generate Python environments. It is also possible
to specify a particular Python version, e.g.:

.. code-block:: console

   (base) $ conda create --name venv_frida python=3.11

To activate the new environment:

.. code-block:: console

   (base) $ conda activate venv_frida
   (venv_frida) $ 

From now on, the prompt

.. code-block:: console

   (venv_frida) $ 

will indicate that we are working in this specific environment.

To stop using this environment, we only need to execute the following command:

.. code-block:: console

   (venv_frida) $ conda deactivate
   (base) $ conda deactivate

For more information on the use of conda virtual environments, please consult
`this link
<https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html>`_.

Installing the software 
-----------------------

The ``fridadrp`` `package <https://github.com/guaix-ucm/fridadrp>`_ utilizes
functionality common to other data reduction pipelines for GTC instruments,
which is available in the ``numina`` package.

Since both packages, ``numina`` and ``fridadrp``, may contain recent changes,
it is advisable to install the development versions of both.

.. code-block:: console

   (venv_frida) $ pip install git+https://github.com/guaix-ucm/numina.git@main#egg=numina

   (venv_frida) $ pip install git+https://github.com/nicocardiel/fridadrp.git@main#egg=fridadrp

If the software is already installed but the user wants to make sure they have
the latest changes included in the development versions of both packages, they
only need to re-run the two previous instructions.

Uninstalling the software
-------------------------

If the software has been installed in an environment as described above using
``venv``, its
removal from the system is very simple. It is only necessary to disable the
environment and delete the directory in which the environment has been
generated.

.. code-block:: console

   (venv_frida) $ deactivate
   $ cd 
   $ rm -fr venv_frida

If the software was installed using ``conda``, you can remove the environment
using:

.. code-block:: console

   (venv_frida) $ conda deactivate
   (base) $ conda remove --name venv_frida --all

