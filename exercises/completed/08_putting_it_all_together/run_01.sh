nextflow ./pipeline/main.nf \
    --publish_dir results \
    --fastq_seqs /lustre/isaac/proj/UTK0262/raw_data_backup/fastq_seqs/ \
    --genome /lustre/isaac/proj/UTK0262/raw_data_backup/refs/chr22_with_ERCC92.fa \
    --annot /lustre/isaac/proj/UTK0262/raw_data_backup/refs/chr22_with_ERCC92.gtf \
    -resume
