Clear

do While .t.

    nResultado := 0

    nValor1 := 10
    nValor2 := 50

    nLinha := 1
    nColuna := 1

    do While nValor1 <= nValor2


        nResultado += nValor1
        nValor1++

        //inkey(0.5)
    enddo
    @ nLinha,nColuna say alltrim(str(nResultado))

    inkey(0)

enddo