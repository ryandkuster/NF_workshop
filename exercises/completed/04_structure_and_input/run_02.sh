nextflow ./pipeline/main.nf \
    -with-report report.html \
    -with-timeline timeline.html \
    --publish_dir results \
    --fasta_seqs fasta_seqs/
