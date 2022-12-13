# MyNewWorkflow.Godwin

## Description

My new workflow

## Components

The present workflow is composed by the following unique components (Note that some components may be repeated):

### lifebitai_test_python

**Description**: A mock python script.\
**Inputs**: 1\
**Outputs**: 0\
**Parameters**: 0\
**Authors**: 

### lifebitai_fastqc

**Description**: Quality control assessment of FastQ files using FastQC.\
**Inputs**: 1\
**Outputs**: 1\
**Parameters**: 0\
**Authors**: @odiogosilva

### lifebit_gunzip

**Description**: Compresses the provided files with Gunzip.\
**Inputs**: 1\
**Outputs**: 1\
**Parameters**: 0\
**Authors**: 

### lifebit_skesa

**Description**: Strategic k-mer extension for scrupulous assemblies using Skesa.\
**Inputs**: 1\
**Outputs**: 1\
**Parameters**: 0\
**Authors**: 

## Inputs

- `--test_python_1.accessions`: Accession file CSV file with a label in the first column and the accession number in the second column.
- `--fastqc_1.fastq`: FastQ files, which can be compressed or uncompressed
