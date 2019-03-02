.. Snakemake-RNASeq-Workflows documentation master file, created by
   sphinx-quickstart on Tue Feb 19 15:00:50 2019.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to Snakemake-RNASeq-Workflows's documentation!
======================================================

.. toctree::
   :maxdepth: 2
   :caption: Contents:

Workflows may contain modified parameters, Please look at ``snakemake`` files before use.

Currct workflows
^^^^^^^^^^^^^^^^


* `STAR-Cufflinks <./STAR-Cufflinks>`_
* `Salmon <./Salmon>`_

Quick start
^^^^^^^^^^^

1. Prepare **samples** directory properly
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Before you run ``write_sample_to_json.py``\ , **samples** directory arangement and it's naming needs to be proper such that it can be read by the script and call furthere in ``snakemake`` files.

Something like this:

.. code-block:: bash

   samples
   ├── SET1_dummy
   │   ├── SET1_dummy_R1.fastq.gz
   │   └── SET1_dummy_R2.fastq.gz
   └── SET3_dummy
       ├── SET3_dummy_R1.fastq.gz
       └── SET3_dummy_R2.fastq.gz

2. Generate ``samples.json`` file
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This will be used to automatic detect samples names and call them in ``snakemake`` files.

.. code-block:: bash

   python3 write_sample_to_json.py --fastq_dir full_path_to_samples_directory

3. Run Workflows
~~~~~~~~~~~~~~~~

First Edit the ``config.yml`` files inside workflow directory with required full paths.

Then simply call ``snakemake`` from workflow directory (With additional parameters if required)

.. code-block:: bash

   snakemake --cores 12

Additional
~~~~~~~~~~

For checking workflow and debug

.. code-block:: bash

   snakemake -np

Visualise the workflow

.. code-block:: bash

   snakemake --forceall --dag | dot -Tpng | display


Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
