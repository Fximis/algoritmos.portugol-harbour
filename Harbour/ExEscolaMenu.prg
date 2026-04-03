//exc sem usar vetor etc, apenas while 

set date british
set epoch to 1940
set message to 23 Center

cCorPadrao := 'W/N'
cCorVermelha := 'R/N'
cCorVerde := 'G/N'

Clear

cNomeAluno      := Space( 20 )
            
dDataNascimento := CtoD( " " )
cDisciplina1    := Space( 10 )
cDisciplina2    := Space( 10 )
cDisciplina3    := Space( 10 )
cCurso          := Space( 10 )
        
nSerie       := 0
nMensalidade := 0

nContador   := 1 

nReprovadas := 0
nNotaDisciplina2 := 0
nNotaDisciplina1 := 0

nNotaDisciplina3 := 0
nFaltaDisciplina2 := 0
nFaltaDisciplina1 := 0

nFaltaDisciplina3 := 0
nNotaTemporaria  := 0
nFaltaTemporaria := 0

cMensagemReprovado := "O Aluno foi reprovado: "


do while .t.

    Clear

    cCabecalho := "....MENU ESCOLA MARIANGELALVA...."

    @ 00,00 to 10,80
    
    @ 01,25 say cCabecalho 

    @ 05,01 prompt "1. Cadastrar Aluno"          message "Realizar o cadastro de alunos e disciplinas"
    @ 06,01 prompt "2. Cadastrar Notas e Faltas" message "Cadastrar Notas e Faltas"
    @ 07,01 prompt "3. Verificar Situacao"       message "Selecione para Verificar a situacao do aluno"
    @ 08,01 prompt "4. Sair"                     message "SAIR DO PROGRAMA"
    menu to nOpcao

    if nOpcao == 1
        
        do while .t. //Coleta de dados 
            
            cCabecalho := "....CADASTRO DE ALUNO...."

            Clear

            @ 00,00 to 20,79

            @ 01,25 say cCabecalho
            
            @ 05,01 say "Nome..............:"
            @ 06,01 say "Data de Nascimento:"
            @ 07,01 say "Curso.............:"
            @ 08,01 say "Serie.............:"
            @ 09,01 say "Disciplina 01.....:"
            @ 10,01 say "Disciplina 02.....:"
            @ 11,01 say "Disciplina 03.....:"
            @ 12,01 say "Valor Mensalidade.:"
            
            @ 05,20 get cNomeAluno   picture '@!'       valid !Empty( cNomeAluno )         color cCorPadrao 
            @ 06,20 get dDataNascimento                 valid !Empty( dDataNascimento )    color cCorPadrao
            @ 07,20 get cCurso       picture '@!'       valid !Empty( cCurso )             color cCorPadrao
            @ 08,20 get nSerie       picture '@!'       valid nSerie > 0                   color cCorPadrao 
            @ 09,20 get cDisciplina1 picture '@!'       valid !Empty( cDisciplina1 )       color cCorPadrao
            @ 10,20 get cDisciplina2 picture '@!'       valid !Empty( cDisciplina2 )       color cCorPadrao
            @ 11,20 get cDisciplina3 picture '@!'       valid !Empty( cDisciplina3 )       color cCorPadrao
            @ 12,20 get nMensalidade picture '@e 9,999.99' valid nMensalidade > 0          color cCorPadrao
            Read

            if lastkey() == 27
                nOpcao := Alert('Deseja', {'Menu', 'Continuar', 'Sair '}, 'W/N')
                if nOpcao == 1
                    exit
                elseif nOpcao == 2
                    loop
                endif
                exit           
            endif
        enddo
        
        if nOpcao == 3
            exit
        endif

    endif


    if nOpcao == 2
    
        cCabecalho := "....NOTAS E FALTAS...."

        Clear

        @ 00,00 to 20,79
        
        @ 01,25 say cCabecalho

        do while .t. .or. nContador >= 12

            do while nContador < 5 //1ª Disciplina todos os bimestres notas e faltas.

                @ 05,01 say "Qual a nota na " + alltrim( cDisciplina1 ) + " no " + alltrim( str( nContador ) ) + " Bimestre"
                @ 07,07 say "Houveram quantas faltas nesta disciplina e neste bimestre? "

                @ 06,01 get nNotaTemporaria  picture '999' valid nNotaTemporaria >= 0 .and.  nNotaTemporaria <=100  color cCorPadrao 
                @ 08,01 get nFaltaTemporaria picture '999' valid nFaltaTemporaria >= 0 
                Read

                if lastkey() == 27
                    nOpcao := Alert( 'Deseja: ', {'Sair', 'Continuar'}, 'R/N')
                    if nOpcao == 1
                        exit
                    endif
                    loop
                endif

                nNotaDisciplina1  += nNotaTemporaria
                nFaltaDisciplina1 += nFaltaTemporaria

                if nContador == 4
                    
                    nNotaDisciplina1 /= 4
                    nFaltaDisciplina1 /= 4
                    
                endif

                nContador++

                nNotaTemporaria  := 0
                nFaltaTemporaria := 0

            enddo

             if nOpcao == 1
                exit
            endif

            do while nContador < 9 //2ª Disciplina todos os bimestres notas e faltas.

                @ 05,01 say "Qual a nota na " + alltrim( cDisciplina2 ) + " no " + alltrim( str( nContador - 5) ) + " Bimestre"
                @ 07,01 say "Houveram quantas faltas nesta disciplina e neste bimestre? "

                @ 06,01 get nNotaTemporaria  picture '999' valid nNotaTemporaria >= 0 .and. nNotaTemporaria <=100  color cCorPadrao 
                @ 08,01 get nFaltaTemporaria picture '999' valid nFaltaTemporaria >= 0 
                read

                if lastkey() == 27
                    nOpcao := Alert( 'Deseja: ', {'Sair', 'Continuar'}, 'R/N')
                    if nOpcao == 1
                        exit
                    endif
                    loop
                endif

                nNotaDisciplina2  += nNotaTemporaria
                nFaltaDisciplina2 += nFaltaTemporaria

                if nContador == 8
                    
                    nNotaDisciplina2 /= 4
                    nFaltaDisciplina2 /= 4
                    
                endif

                nContador++

                nNotaTemporaria  := 0
                nFaltaTemporaria := 0

            enddo
           
            if nOpcao == 1
                exit
            endif

            do while nContador < 13 //3ª Disciplina todos os bimestres notas e faltas.

                @ 05,01 say "Qual a nota na " + alltrim( cDisciplina3 ) + " no " + alltrim( str( nContador - 8) ) + " Bimestre"
                @ 07,07 say "Houveram quantas faltas nesta disciplina e neste bimestre? "

                @ 06,01 get nNotaTemporaria  picture '999' valid  nNotaTemporaria >= 0 .and. nNotaTemporaria <=100  color cCorPadrao 
                @ 08,01 get nFaltaTemporaria picture '999' valid  nFaltaTemporaria >= 0 
                Read

                if lastkey() == 27
                    nOpcao := Alert( 'Deseja: ', {'Sair', 'Continuar'}, 'R/N')
                    if nOpcao == 1
                        exit
                    endif
                    loop
                endif

                nNotaDisciplina3  += nNotaTemporaria
                nFaltaDisciplina3 += nFaltaTemporaria

                if nContador == 12
                    
                    nNotaDisciplina3 /= 4
                    nFaltaDisciplina3 /= 4
                    
                endif

                nContador++

                nNotaTemporaria  := 0
                nFaltaTemporaria := 0

            enddo

             if nOpcao == 1
                exit
            endif

            nMediaMin :=0
            nFaltaMax := 0

            if nSerie <= 4
                
                nMediamin := 60
            
            else

                nMediaMin := 70
            
            endif


            if nSerie <= 3

                nFaltaMax := 6

            else

                nFaltaMax := 8

            endif

            if nNotaDisciplina1 < nMediaMin .or. nFaltaDisciplina1 > nFaltaMax

                nReprovadas++
                cMensagemReprovado += cDisciplina1 + " "

            endif

            if nNotaDisciplina2 < nMediaMin .or. nFaltaDisciplina2 > nFaltaMax

                nReprovadas++
                cMensagemReprovado += cDisciplina2 + " "

            endif

            if nNotaDisciplina3 < nMediaMin .or. nFaltaDisciplina3 > nFaltaMax

                nReprovadas++
                cMensagemReprovado += cDisciplina3 + " "

            endif
           
            exit

        enddo

    endif

    if nOpcao == 3

        cCabecalho := "....BOLETIM...."

        Clear

        @ 00,00 to 20,79
        
        @ 01,25 say cCabecalho

        if nReprovadas == 0 //Arrumar aqui q se nao colocar nada tb da aprovado 
            @ 05,01 say "Aluno Aprovado"
        elseif nReprovadas <= 2
            @ 05,01 say "Aluno Aprovado com DP" + cMensagemReprovado color cCorVerde
        else
            @ 05,01 say "Aluno Reprovado" + cMensagemReprovado color cCorVermelha
        endif

        

            nMensalidade *= 1 + 0.20 * nReprovadas

            @ 06,01 say "Mensalidade:" + alltrim( transform( nMensalidade, '@e 99,999.99' ) )
        

        inkey(0)

    endif

    
    if nOpcao == 4
        exit
    endif



enddo




/*
nAdicional += 0.02
nReducao += 0.05

pode ser trocado por nIndexador += ou -= 


nValorTotal := nSalarioBase *(1 + (nAdicional - nReducao))

nIdade < 58 .or. (year(dDataAdmissao) - year(dDataDemissao) < 20)

dDataAux := Ctod( "01/" + Alltrim(str(nMes +1)) + "/" + Alltrim(str( nAno)))
dDataAux -= 1



   if month( dDataAtual ) < month( dDataNascimento )
            nIdade := nIdade - 1
      endif    

      if month( dDataAtual ) = month( dDataNascimento ) .and. day( dDataAtual ) < day( dDataNascimento )
         nIdade := nIdade - 1
      endif

      

FUNCTION Idade( dNascimento )
   LOCAL dHoje := Date()
   LOCAL nIdade

   nIdade := Year( dHoje ) - Year( dNascimento )

   IF ( Month( dHoje ) < Month( dNascimento ) ) .OR. ;
      ( Month( dHoje ) == Month( dNascimento ) .AND. ;
        Day( dHoje ) < Day( dNascimento ) )
      nIdade--
   ENDIF

RETURN nIdade

*/