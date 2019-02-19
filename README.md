## Snakemake workflows for RNA-Seq Analysis
![GitHub](https://img.shields.io/github/license/sk-sahu/Snakemake-RNASeq-Workflows.svg?style=flat)
![GitHub repo size in bytes](https://img.shields.io/github/repo-size/sk-sahu/Snakemake-RNASeq-Workflows.svg?style=flat)
[![Documentation Status](https://readthedocs.org/projects/snakemake-rnaseq-workflows/badge/?version=latest)](https://snakemake-rnaseq-workflows.readthedocs.io/en/latest/?badge=latest)
![Maintenance](https://img.shields.io/maintenance/yes/2019.svg?style=flat)
![GitHub last commit](https://img.shields.io/github/last-commit/sk-sahu/Snakemake-RNASeq-Workflows.svg?style=flat)

Workflows may contain modified parameters, Please look at `snakemake` files before use.

### Currct workflows
* [STAR-Cufflinks](./STAR-Cufflinks)
* [Salmon](./Salmon)

### Quick start

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
```
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
```
snakemake -np
```

Visualise the workflow
```
snakemake --forceall --dag | dot -Tpng | display
```
