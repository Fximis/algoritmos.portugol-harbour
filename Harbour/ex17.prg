
do while .t.
    clear
    cNome       := Space ( 20 )
    nQuantidade := 0

    @ 01,01 say "Nome: "
    
    @ 01,10 get cNome picture '@!' valid !Empty( cNome )
    Read

    if lastkey() == 27
        nOpcao := Alert("Sair", {'Sim','Nao'}, 'W/G')
        if nOpcao == 1 
            exit
        endif
        loop
    endif    
    
    nCont   := len(cNome)
    cString := Space (len(cNome))

    do while nCont > 0
        cString += SubStr( cNome, nCont--, 1 )  
    enddo    
    @ 05,01 say alltrim(cString) 
    inkey(0)
enddo




inkey(0)