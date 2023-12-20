nextflow.enable.dsl=2

include { GET_HEADERS    } from "./modules/fasta_utils.nf"
include { CONCAT_HEADERS } from "./modules/fasta_utils.nf"

workflow {

    if (params.fasta_seqs) {
        ch_fastas = Channel.fromPath("${params.fasta_seqs}/*fna", checkIfExists: true)
        ch_fastas.view()
        GET_HEADERS(ch_fastas)
        GET_HEADERS.out.ch_headers.view()
        CONCAT_HEADERS(GET_HEADERS.out.ch_headers.collect())
    }

}
