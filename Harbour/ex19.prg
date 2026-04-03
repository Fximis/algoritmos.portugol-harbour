Clear

do while .t.

    Clear

    nValor    := 0
    nContador := 0
    
    nLinha := 5


    @ 01,01 say "Digite um numero para tabuada:"

    @ 01,35 get nValor picture '999' valid !Empty( nValor )
    Read

    if lastkey() == 27
        nOpcao := Alert('Sair?', {'Sim', 'Nao'}, 'R/W')
        if nOpcao == 1
           exit
        endif
        loop 
    endif
    
    do while nContador <= nValor
        
        @ nLinha++,10 say alltrim(str(nContador)) + " x " + alltrim(str(nValor)) + " = " + alltrim(str(nValor * nContador))
        
        nContador++

    enddo
    
    inkey(0)
enddo