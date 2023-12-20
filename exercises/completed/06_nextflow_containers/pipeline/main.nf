nextflow.enable.dsl=2

include { FASTQC  } from "./modules/fastqc.nf"
include { MULTIQC } from "./modules/multiqc.nf"

workflow {

    if (params.fastq_seqs) {
        ch_fastqs = Channel.fromFilePairs("${params.fastq_seqs}/*read{1,2}.fastq.gz", checkIfExists: true, flat:true)
        // ch_fastqs.view()
        FASTQC(ch_fastqs)
        MULTIQC(FASTQC.out.ch_fastqc.collect())
    }

}
