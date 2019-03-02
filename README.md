## Snakemake workflows for RNA-Seq Analysis
[![GitHub](https://img.shields.io/github/license/sk-sahu/Snakemake-RNASeq-Workflows.svg?style=flat)](https://github.com/sk-sahu/Snakemake-RNASeq-Workflows/blob/master/LICENSE.txt)
![PyPI - Python Version](https://img.shields.io/pypi/pyversions/snakemake.svg)
[![Snakemake](https://img.shields.io/badge/snakemake-≥5.2.3-blueviolet.svg)](https://snakemake.readthedocs.io/en/stable/)
[![Documentation Status](https://readthedocs.org/projects/snakemake-rnaseq-workflows/badge/?version=latest)](https://snakemake-rnaseq-workflows.readthedocs.io/en/latest/?badge=latest)

Workflows may contain modified parameters, Please look at `snakemake` files before use.

If this helps you please cite: [![DOI](https://zenodo.org/badge/171293144.svg)](https://zenodo.org/badge/latestdoi/171293144)

### Currct workflows
* [STAR-Cufflinks](./STAR-Cufflinks)
* [Salmon](./Salmon)

Workflows are making in progress. I will add more downstreem tools as go along.
You have an workflow in mind too add! Requet it here - [![feature](https://img.shields.io/badge/Issue-Feature_request-orange.svg)](https://github.com/sk-sahu/Snakemake-RNASeq-Workflows/issues/new?assignees=&labels=&template=feature_request.md&title=)

### Quick start

#### Pre-requirements
You need to have `python3` installed in your system with `conda` enabled. 

#### 1. Prepare **samples** directory properly

Before you run `write_sample_to_json.py`, **samples** directory arangement and it's naming needs to be proper such that it can be read by the script and call furthere in `snakemake` files.

Something like this:
```
samples
├── SET1_dummy
│   ├── SET1_dummy_R1.fastq.gz
│   └── SET1_dummy_R2.fastq.gz
└── SET3_dummy
    ├── SET3_dummy_R1.fastq.gz
    └── SET3_dummy_R2.fastq.gz
```

#### 2. Generate `samples.json` file
This will be used to automatic detect samples names and call them in `snakemake` files.
```bash
python3 write_sample_to_json.py --fastq_dir full_path_to_samples_directory
```

#### 3. Run Workflows
First Edit the `config.yml` files inside workflow directory with required full paths.

Then simply call `snakemake` from workflow directory (With additional parameters if required)
```
snakemake --cores 12
```
#### Additional
For checking workflow and debug
```bash
snakemake -np
```

Visualise the workflow
```bash
snakemake --forceall --dag | dot -Tpng | display
```
