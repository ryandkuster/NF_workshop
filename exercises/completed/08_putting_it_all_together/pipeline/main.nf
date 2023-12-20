nextflow.enable.dsl=2

include { FASTQC     } from "./modules/fastqc.nf"
include { MULTIQC    } from "./modules/multiqc.nf"
include { STAR_INDEX } from "./modules/star.nf"
include { STAR_MAP   } from "./modules/star.nf"

workflow {

    if (params.fastq_seqs) {
        if (!params.skip_qc) {
            ch_fastqs = Channel.fromFilePairs("${params.fastq_seqs}/*read{1,2}.fastq.gz", checkIfExists: true, flat:true)
            FASTQC(ch_fastqs)
            MULTIQC(FASTQC.out.ch_fastqc.collect())
        }
        STAR_INDEX(params.genome, params.annot)
        STAR_MAP(ch_fastqs, STAR_INDEX.out.star_idx)
    }
    /*
    goals:
        1. add the newly built STAR image to the "star.nf" processes
        2. run the pipeline supplying the full path to "genome" and
           "annot" params
        3. in "nextflow.config", add "maxForks = 1" to the star label,
           then run the pipeline again
    */
}
