nextflow.enable.dsl=2

include { test_python_1 } from './modules/test_python_1/module.nf'
include { fastqc_1 } from './modules/fastqc_1/module.nf'
include { gunzip_1 } from './modules/gunzip_1/module.nf'
include { skesa_1 } from './modules/skesa_1/module.nf'

workflow {
input1 = Channel.fromPath(params.test_python_1.accessions).splitCsv(sep: ';').map { row -> tuple(evaluate(row[0]), evaluate(row[1])) }
input2 = Channel.fromPath(params.fastqc_1.fastq)
test_python_1(input1)
fastqc_1(input2)
gunzip_1(fastqc_1.out.output1)
skesa_1(gunzip_1.out.output1)
}
