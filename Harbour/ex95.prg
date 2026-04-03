function main()
set date british
set epoch to 1940
Clear

cNome := Space( 20 )
dData := CtoD( " " )
nPeso := 0

cDados := Space ( 44 )

do while.t.

    @ 01,01 say "Nome......:"
    @ 02,01 say "Data Nasc.:"
    @ 03,01 say "Peso......:"
    
    @ 01,15 get cNome picture '@!' valid !Empty( cNome )
    @ 02,15 get dData valid !Empty ( dData )
    @ 03,15 get nPeso picture '@E 999.99' valid nPeso > 0
    read




    if lastkey() == 27
        nOpcao := Alert( 'Quer:',{'Sair','Continuar'}, 'R/W' )
        if nOpcao == 1
            exit
        endif
        loop
    endif
    
    cDados := cNome + DtoC(dData) + str(nPeso)

    @ 05,01 say cDados

    cNome2 := SubStr( cDados, 1, 20 ) 
    dData2 := cTod( SubStr( cDados, 21, 8 ) )
    nPeso2 := Val( SubStr( cDados, 29 ) )

    @ 06,01 say cNome2
    @ 07,01 say dData2
    @ 08,01 say nPeso2  
 



enddo




inkey(0)