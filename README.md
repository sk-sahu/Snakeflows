## Snakemake workflows for RNA-Seq Analysis

### Currct workflows
* STAR-Cufflinks
* Salmon

### Quick start

#### Generate `samples.json` file for input to Snakemake
```
python3 write_sample_to_json.py --fastq_dir full_path_to_samples_directory
```

#### Run Workflows
First Edit the `config.yml` files inside workflow directory with proper paths.

Then simply call `snakemake` from workflow directory (With additional parameters if required)
```
snakemake --cores 12
```

For checking workflow and debug
```
snakemake -np
```

Visualise the workflow
```
snakemake --forceall --dag | dot -Tpng | display
```
