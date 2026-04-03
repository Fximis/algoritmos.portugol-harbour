Set message to 23 center

do while .t.

    Clear

    nOpcao := 0

    cCabecalho := "....MENU PRINCIPAL...."

    @ 00,00 to 10,79

    @ 01,30 say cCabecalho
    
    @ 04,30 prompt "1. EXC 07" message "Acessar Exercicio 7 - semana 03"
    @ 05,30 prompt "2. EXC 08" message "Acessar Exercicio 8 - semana 03"
    @ 06,30 prompt "3. EXC 09" message "Acessar Exercicio 9 - semana 03"
    @ 07,30 prompt "4. SAIR"   message "Sair do Programa"
    menu to nOpcao

    if nOpcao == 1
        Clear
        cCabecalho := "....Exercicio 07...."
        
        do while .t.
            
            Clear

            nValor1 := 0
            nValor2 := 0

            @ 01,30 say cCabecalho
            @ 03,01 say "Digite dois valores para efetuar as quatro operacoes basicas"

            @ 03,70 get nValor1 picture '99'
            @ 03,75 get nValor2 picture '99'
            read

            if lastkey() == 27
                nOpcao := Alert( 'Deseja sair do programa?', {'Sim','Nao',}, 'G/W' )
                if nOpcao == 1
                    exit
                endif
                loop
            endif
                
            @ 05,01 say "Multiplicacao"
            @ 06,01 say nValor1*nValor2 picture '9999'

            @ 07,01 say "Divisao"
            @ 08,01 say nValor1/nValor2 picture '9999'

            @ 09,01 say "Soma"
            @ 10,01 say nValor1+nValor2 picture '9999'

            @ 11,01 say "Subtracao"
            @ 12,01 say nValor1-nValor2 picture '9999'

            inkey(0)
         
        enddo

    elseif nOpcao == 2
                   
        cCabecalho := "....Exercicio 08...."
            
        do while .t.

            Clear

            nIdade := 0
            
            @ 01,30 say cCabecalho    
            @ 03,01 say "Digite a sua idade:"

            @ 03,20 get nIdade picture '999' valid nIdade >=0 .and. nIdade <130
            read

            if lastkey() == 27
                nOpcao := Alert( 'Deseja sair do programa?', {'Sim','Nao'}, 'G/W' )
                if nOpcao == 1
                    exit
                endif
                loop
            endif
            
            inkey(0)             
                     
        enddo

        /*if nOpcao == 1
            loop
        endif*/

    elseif nOpcao == 3
               
        cCabecalho := "....Exercicio 10...."
        
        do while .t.

            Clear

            @ 01,30 say cCabecalho
            
            cNome      := space(20)
            nIdade     := 0
            cCategoria := "Sem categoria"

            @ 03,01 say "Seu nome: "
            @ 04,01 say "Sua idade: "

            @ 03,15 get cNome  picture "@!"  valid !empty(cNome) color 'W/N'
            @ 04,17 get nIdade picture '999' valid nIdade > 0    color 'W/N'
            read

            if lastkey() == 27
                nOpcao := Alert( 'Deseja sair?',{'Sim', 'Nao'}, 'R/W')
                if nOpcao == 1
                    exit
                endif
                loop
            endif

            if nIdade >= 5 .and. nIdade <= 7

                cCategoria := "infantil A"

            elseif nIdade >= 8 .and. nIdade <= 10

                cCategoria := "infantil B"

            elseif nIdade >= 11 .and. nIdade <= 13

                cCategoria := "juvenil A"

            elseif nIdade >= 14 .and. nIdade <= 17

                cCategoria := "juvenil B"

            elseif nIdade > 17

                cCategoria := "senior"

            endif

            @ 06,01 say alltrim(cNome) + " Sua categoria eh: " + cCategoria

            inkey(0)

        enddo 

        /*if nOpcao == 1
            loop
        endif*/

    else
        nOpcao := Alert( 'Deseja sair do programa?', {'Sim','Nao'}, 'G/W' )
        if nOpcao == 1
            exit
        endif
        loop
    endif
enddo
