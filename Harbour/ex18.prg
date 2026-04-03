Clear

do While .t.

    nLinha  := 0
    nColuna := 0

    do while nColuna <= 10

        @ nLinha, nColuna say alltrim( str( nColuna ) ) 

        nColuna++
        
    enddo
    inkey(1) //arrumar
    do while nColuna > 0

        @ nLinha+1, nColuna say alltrim( str( nColuna ) ) 
        
        nColuna--
    enddo    
    inkey(0)
enddo