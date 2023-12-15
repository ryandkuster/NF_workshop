nextflow.enable.dsl=2

process WRITE_ODD {

    input:
        val x

    output:
        path "*txt"

    script:
        """
        echo ${x} > ${x}.txt
        """
}

process WRITE_EVEN {

    input:
        val x

    output:
        path "*txt"

    script:
        """
        echo ${x} > ${x}.txt
        """
}

workflow {
    ch_odd = Channel.of(1, 3, 5, 7)
    ch_even = Channel.of(2, 4, 6, 8)

    WRITE_ODD(ch_odd)
    WRITE_EVEN(ch_even)
    WRITE_ODD.out.view()
}
