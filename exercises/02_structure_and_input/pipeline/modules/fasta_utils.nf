process GET_HEADERS {
    input:
        path fasta_file

    output:
        path "*headers.txt", emit: ch_headers

    script:
        """
        grep "^>" ${fasta_file} > ${fasta_file.baseName}_headers.txt
        """
}
