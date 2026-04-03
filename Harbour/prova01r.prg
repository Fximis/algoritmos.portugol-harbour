//Fellipe M. Schmidt n� 22
set Date British
set epoch to 1940

clear

cNomeEscola := "Escola MariAngelalva "

cDisciplina1 := space(15)
cDisciplina2 := space(15)
cDisciplina3 := space(15)

cSituacaoDisciplina1 := "APROVADO"
cSituacaoDisciplina2 := "APROVADO"
cSituacaoDisciplina3 := "APROVADO"

cDisciplinaReprovada := " reprovou em: "

nMediaDisciplina1 := 0
nMediaDisciplina2 := 0
nMediaDisciplina3 := 0

cNomeAluno           := space(20)
cCurso               := space(10)
nSerieAluno          := 0
dDataNascimentoAluno := cTod("")

nNotaTemporaria       := 0
nFaltaTemporaria      := 0
nMediaTemporaria      := 0
nFaltaMediaTemporaria := 0

nQuantidadeReprovadas := 0

cCorPergunta  := 'W/N'
cCorReprovado := 'R/N'
cCorAprovado  := 'G/N'

nValorMensalidade           := 0
nValorMensalidadeAtualizado := 0

dDataAtual := date()
nAno       := year(dDataAtual)
nMes       := month(dDataAtual)
nDia       := day(dDataAtual)
nDiaSemana := dow(dDataAtual)

cMes       := " Janeiro "
cDiaSemana := "(Domingo)"

@ 01,00 to 24,79
@ 03,01 to 03,78

//Data e local - dia 20 - Semana 3

if nMes = 2
   cMes := " Fevereiro "
endif

if nMes = 3
   cMes := " Marco "
endif

if nMes = 4
   cMes := " Abril "
endif

if nMes = 5
   cMes := " Maio "
endif

if nMes = 6
   cMes := " Junho "
endif

if nMes = 7
   cMes := " Julho "
endif

if nMes = 8
   cMes := " Agosto "
endif

if nMes = 9
   cMes := " Setembro "
endif

if nMes = 10
   cMes := " Outubro "
endif

if nMes = 11
   cMes := " Novembro "
endif

if nMes = 12
   cMes := " Dezembro "
endif


if nDiaSemana = 2
   cDiaSemana :=  " (Segunda-Feira) "
endif

if nDiaSemana = 3
   cDiaSemana :=  " (Terca-Feira) "
endif

if nDiaSemana = 4
   cDiaSemana := " (Quarta-feira) "
endif

if nDiaSemana = 5
   cDiaSemana := " (Quinta-feira) "
endif

if nDiaSemana = 6
   cDiaSemana := " (Sexta-feira) "
endif

if nDiaSemana = 7
   cDiaSemana := " (Sabado) "
endif

@ 00,01 say "Maring�, " + alltrim(str(nDia)) +" de " + cMes + " de " + alltrim(str(nAno)) + + cDiaSemana

// Voltar qnd ajustar os espa�os.@ 00,10 say "Bem vindo ao sistema " + cNomeEscola picture '@!' color 'B/N'
@ 02,01 say "Nome: "
@ 02,28 say "Curso: "
@ 02,45 say "Serie: "
@ 02,56 say "Mensalidade: R$"
@ 04,01 say "D. Nasc.:"


@ 02,08 get cNomeAluno        picture '@!'          valid !empty(cNomeAluno)                                     color cCorPergunta
@ 02,35 get cCurso            picture '@!'          valid !empty(cCurso)                                         color cCorPergunta
@ 02,52 get nSerieAluno       picture '9'           valid nSerieAluno > 0 .and. nSerieAluno < 9                  color cCorPergunta
@ 02,71 get nValorMensalidade picture '@e 9,999.99' valid nValorMensalidade > 0 .and. nValorMensalidade < 10000  color cCorPergunta
@ 04,11 get dDataNascimentoAluno valid !empty(dDataNascimentoAluno) .and. dDataNascimentoAluno < (dDataAtual - 6570)
read

@ 04,19 to 20,19
@ 06,01 to 06,78
@ 11,01 to 11,78
@ 14,01 to 14,78

@ 06,27 to 20,27
@ 06,37 to 20,37
@ 06,47 to 20,47
@ 06,57 to 20,57
@ 06,67 to 20,67

@ 05,01 say "Disciplinas"
@ 09,01 say "1- "
@ 13,01 say "2- "
@ 15,01 say "3- "

@ 09,20 say "NOTA"
@ 10,20 say "FALTA"
@ 12,20 say "NOTA"
@ 13,20 say "FALTA"
@ 15,20 say "NOTA"
@ 16,20 say "FALTA"

@ 05,30 say "BIM 1"
@ 05,40 say "BIM 2"
@ 05,50 say "BIM 3"
@ 05,60 say "BIM 4"
@ 05,70 say "SITUACAO"

@ 09,04 get cDisciplina1 picture '@!' valid !Empty(cDisciplina1) color cCorPergunta
@ 13,04 get cDisciplina2 picture '@!' valid !Empty(cDisciplina2) color cCorPergunta
@ 15,04 get cDisciplina3 picture '@!' valid !Empty(cDisciplina3) color cCorPergunta
read

@ 09,30 get nNotaTemporaria  picture '999' valid nNotaTemporaria  > -1 .and. nNotaTemporaria < 101
@ 10,30 get nFaltaTemporaria picture '99'  valid nFaltaTemporaria > -1
read

nMediaDisciplina1     += nNotaTemporaria
nFaltaMediaTemporaria += nFaltaTemporaria

nNotaTemporaria  := 0
nFaltaTemporaria := 0


@ 09,40 get nNotaTemporaria  picture '999' valid nNotaTemporaria > -1 .and. nNotaTemporaria < 101
@ 10,40 get nFaltaTemporaria picture '99'  valid nFaltaTemporaria > -1
read

nMediaDisciplina1     += nNotaTemporaria
nFaltaMediaTemporaria += nFaltaTemporaria

nNotaTemporaria  := 0
nFaltaTemporaria := 0

@ 09,50 get nNotaTemporaria  picture '999' valid nNotaTemporaria > -1 .and. nNotaTemporaria < 101
@ 10,50 get nFaltaTemporaria picture '99'  valid nFaltaTemporaria > -1
read

nMediaDisciplina1     += nNotaTemporaria
nFaltaMediaTemporaria += nFaltaTemporaria

nNotaTemporaria  := 0
nFaltaTemporaria := 0

@ 09,60 get nNotaTemporaria  picture '999' valid nNotaTemporaria > -1 .and. nNotaTemporaria < 101
@ 10,60 get nFaltaTemporaria picture '99'  valid nFaltaTemporaria > -1
read

nMediaDisciplina1     += nNotaTemporaria
nFaltaMediaTemporaria += nFaltaTemporaria

nNotaTemporaria  := 0
nFaltaTemporaria := 0

nMediaDisciplina1     := nMediaDisciplina1 /4
nFaltaMediaTemporaria := nFaltaMediaTemporaria /4

if nSerieAluno <= 3
      if nFaltaMediaTemporaria > 6 .or. nMediaDisciplina1 < 60
         cSituacaoDisciplina1 := "REPROVADO"
         cDisciplinaReprovada  += cDisciplina1 + " "
         nQuantidadeReprovadas ++
         @ 09,70 say cSituacaoDisciplina1            color cCorReprovado
         @ 10,70 say alltrim(str(nMediaDisciplina1)) color cCorReprovado
      else
       @ 09,70 say cSituacaoDisciplina1            color cCorAprovado
       @ 10,70 say alltrim(str(nMediaDisciplina1)) color cCorAprovado
      endif
endif

if nSerieAluno >= 4
   if  nFaltaMediaTemporaria > 8 .or. nMediaDisciplina1 < 70
       cSituacaoDisciplina1  := "REPROVADO"
       cDisciplinaReprovada  += cDisciplina1 + " "
       nQuantidadeReprovadas ++
       @ 09,70 say cSituacaoDisciplina1          color cCorReprovado
     @ 10,70 say alltrim(str(nMediaDisciplina1)) color cCorReprovado
   else
       @ 09,70 say cSituacaoDisciplina1            color cCorAprovado
       @ 10,70 say alltrim(str(nMediaDisciplina1)) color cCorAprovado
   endif
endif

//Materia 2

@ 12,30 get nNotaTemporaria  picture '999' valid nNotaTemporaria > -1 .and. nNotaTemporaria < 101
@ 13,30 get nFaltaTemporaria picture '99'  valid nFaltaTemporaria > -1
read

nMediaDisciplina2     += nNotaTemporaria
nFaltaMediaTemporaria += nFaltaTemporaria

nNotaTemporaria  := 0
nFaltaTemporaria := 0


@ 12,40 get nNotaTemporaria  picture '999' valid nNotaTemporaria > -1 .and. nNotaTemporaria < 101
@ 13,40 get nFaltaTemporaria picture '99'  valid nFaltaTemporaria > -1
read

nMediaDisciplina2     += nNotaTemporaria
nFaltaMediaTemporaria += nFaltaTemporaria

nNotaTemporaria  := 0
nFaltaTemporaria := 0

@ 12,50 get nNotaTemporaria  picture '999' valid nNotaTemporaria > -1 .and. nNotaTemporaria < 101
@ 13,50 get nFaltaTemporaria picture '99'  valid nFaltaTemporaria > -1
read

nMediaDisciplina2     += nNotaTemporaria
nFaltaMediaTemporaria += nFaltaTemporaria

nNotaTemporaria  := 0
nFaltaTemporaria := 0

@ 12,60 get nNotaTemporaria  picture '999' valid nNotaTemporaria > -1 .and. nNotaTemporaria < 101
@ 13,60 get nFaltaTemporaria picture '99'  valid nFaltaTemporaria > -1
read

nMediaDisciplina2     += nNotaTemporaria
nFaltaMediaTemporaria += nFaltaTemporaria

nNotaTemporaria  := 0
nFaltaTemporaria := 0

nMediaDisciplina2     := nMediaDisciplina2 /4
nFaltaMediaTemporaria := nFaltaMediaTemporaria /4

if nSerieAluno <= 3
      if nFaltaMediaTemporaria > 6 .or. nMediaDisciplina2 < 60
         cSituacaoDisciplina2  := "REPROVADO"
         cDisciplinaReprovada  += cDisciplina2 + " "
         nQuantidadeReprovadas ++
         @ 12,70 say cSituacaoDisciplina2            color cCorReprovado
         @ 13,70 say alltrim(str(nMediaDisciplina2)) color cCorReprovado
      else
       @ 12,70 say cSituacaoDisciplina2            color cCorAprovado
       @ 13,70 say alltrim(str(nMediaDisciplina2)) color cCorAprovado
      endif
endif

if nSerieAluno >= 4
   if nFaltaMediaTemporaria > 8 .or. nMediaDisciplina2 < 70
       cSituacaoDisciplina2  := "REPROVADO"
       cDisciplinaReprovada  += cDisciplina2 + " "
       nQuantidadeReprovadas ++
        @ 12,70 say cSituacaoDisciplina2            color cCorReprovado
        @ 13,70 say alltrim(str(nMediaDisciplina2)) color cCorReprovado
   else
       @ 12,70 say cSituacaoDisciplina2            color cCorAprovado
       @ 13,70 say alltrim(str(nMediaDisciplina2)) color cCorAprovado
   endif
endif


//Materia 3

@ 15,30 get nNotaTemporaria  picture '999' valid nNotaTemporaria > -1 .and. nNotaTemporaria < 101
@ 16,30 get nFaltaTemporaria picture '99'  valid nFaltaTemporaria > -1
read

nMediaDisciplina3     += nNotaTemporaria
nFaltaMediaTemporaria += nFaltaTemporaria

nNotaTemporaria  := 0
nFaltaTemporaria := 0


@ 15,40 get nNotaTemporaria  picture '999' valid nNotaTemporaria > -1 .and. nNotaTemporaria < 101
@ 16,40 get nFaltaTemporaria picture '99'  valid nFaltaTemporaria > -1
read

nMediaDisciplina3     += nNotaTemporaria
nFaltaMediaTemporaria += nFaltaTemporaria

nNotaTemporaria  := 0
nFaltaTemporaria := 0

@ 15,50 get nNotaTemporaria  picture '999' valid nNotaTemporaria > -1 .and. nNotaTemporaria < 101
@ 16,50 get nFaltaTemporaria picture '99'  valid nFaltaTemporaria > -1
read

nMediaDisciplina3     += nNotaTemporaria
nFaltaMediaTemporaria += nFaltaTemporaria

nNotaTemporaria  := 0
nFaltaTemporaria := 0

@ 15,60 get nNotaTemporaria  picture '999' valid nNotaTemporaria > -1 .and. nNotaTemporaria < 101
@ 16,60 get nFaltaTemporaria picture '99'  valid nFaltaTemporaria > -1
read

nMediaDisciplina3     += nNotaTemporaria
nFaltaMediaTemporaria += nFaltaTemporaria

nNotaTemporaria  := 0
nFaltaTemporaria := 0

nMediaDisciplina3     := nMediaDisciplina3 /4
nFaltaMediaTemporaria := nFaltaMediaTemporaria /4

if nSerieAluno <= 3
      if nFaltaMediaTemporaria > 6 .or. nMediaDisciplina3 < 60
         cSituacaoDisciplina3  := "REPROVADO"
         cDisciplinaReprovada  += cDisciplina3
         nQuantidadeReprovadas ++
         @ 15,70 say cSituacaoDisciplina3            color cCorReprovado
         @ 16,70 say alltrim(str(nMediaDisciplina3)) color cCorReprovado
      else
       @ 15,70 say cSituacaoDisciplina3            color cCorAprovado
       @ 16,70 say alltrim(str(nMediaDisciplina3)) color cCorAprovado
      endif
endif

if nSerieAluno >= 4
   if  nFaltaMediaTemporaria > 8 .or. nMediaDisciplina3 < 70
       cSituacaoDisciplina3  := "REPROVADO"
       cDisciplinaReprovada  += cDisciplina3
       nQuantidadeReprovadas ++
        @ 15,70 say cSituacaoDisciplina3            color cCorReprovado
        @ 16,70 say alltrim(str(nMediaDisciplina3)) color cCorReprovado
   else
       @ 15,70 say cSituacaoDisciplina3           color cCorAprovado
       @16,70 say alltrim(str(nMediaDisciplina3)) color cCorAprovado
   endif
endif

//Final com acr�scimo de Mensalidade

if nQuantidadeReprovadas > 0
   nValorMensalidadeAtualizado := nValorMensalidade + (nValorMensalidade * (nQuantidadeReprovadas * 0.20))
   @ 20,01 say "Mensalidade atualizada: R$"     + alltrim(str(nValorMensalidadeAtualizado))
   if nQuantidadeReprovadas <= 2
      @21,01 say "Situacao: APROVADO com "      + alltrim(str(nQuantidadeReprovadas)) + " depend�ncias. " + alltrim(cDisciplinaReprovada) color cCorAprovado
   elseif nQuantidadeReprovadas > 2
          @21,01 say "Situacao: REPROVADO com " + alltrim(str(nQuantidadeReprovadas)) +  " depend�ncias. " + alltrim(cDisciplinaReprovada) color cCorReprovado
   endif
endif

if nQuantidadeReprovadas == 0
   @ 20,01 say "Situacao: APROVADO sem Dependencias" color cCorAprovado
endif

// 20/01 ter - sem. 03 - adicionando data

@ 22,01 say "D. Nasc.: " + DtoC(dDataNascimentoAluno)
@ 23,01 say "Data Boletim: " + DtoC(dDataAtual)

inkey(0)











/*         do while nContador < 5 //1ª Disciplina todos os bimestres notas e faltas.

                @ 05,01 say "Qual a nota na " + alltrim( cDisciplina1 ) + " no " + alltrim( str( nContador ) ) + " Bimestre"
                @ 07,07 say "Houveram quantas faltas nesta disciplina e neste bimestre? "

                @ 06,01 get nNotaTemporaria  picture '999' valid nNotaTemporaria >= 0 .and. nNotaTemporaria <=100  color cCorPadrao 
                @ 08,01 get nFaltaTemporaria picture '999' valid nNotaTemporaria >= 0 .and. nNotaTemporaria <=100 color cCorPadrao
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
            
            nContador := 1

            do while nContador < 5 //2ª Disciplina todos os bimestres notas e faltas.

                @ 05,01 say "Qual a nota na " + alltrim( cDisciplina2 ) + " no " + alltrim( str( nContador ) ) + " Bimestre"
                @ 07,07 say "Houveram quantas faltas nesta disciplina e neste bimestre? "

                @ 06,01 get nNotaTemporaria  picture '999' valid nNotaTemporaria >= 0 .and. nNotaTemporaria <=100 color cCorPadrao 
                @ 08,01 get nFaltaTemporaria picture '999' valid nNotaTemporaria >= 0 .and. nNotaTemporaria <=100 color cCorPadrao
                Read

                if lastkey() == 27
                    nOpcao := Alert( 'Deseja: ', {'Sair', 'Continuar'}, 'R/N')
                    if nOpcao == 1
                        exit
                    endif
                    loop
                endif

                nNotaDisciplina2  += nNotaTemporaria
                nFaltaDisciplina2 += nFaltaTemporaria

                if nContador == 4
                    
                    nNotaDisciplina2 /= 4
                    nFaltaDisciplina2 /= 4
                    
                endif

                nContador++

                nNotaTemporaria  := 0
                nFaltaTemporaria := 0

            enddo

            nContador := 1

            do while nContador < 5 //3ª Disciplina todos os bimestres notas e faltas.

                @ 05,01 say "Qual a nota na " + alltrim( cDisciplina3 ) + " no " + alltrim( str( nContador ) ) + " Bimestre"
                @ 07,07 say "Houveram quantas faltas nesta disciplina e neste bimestre? "

                @ 06,01 get nNotaTemporaria  picture '999' valid  nNotaTemporaria >= 0 .and. nNotaTemporaria <=100  color cCorPadrao 
                @ 08,01 get nFaltaTemporaria picture '999' valid  nNotaTemporaria >= 0 .and. nNotaTemporaria <=100  color cCorPadrao
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

                if nContador == 4
                    
                    nNotaDisciplina3 /= 4
                    nFaltaDisciplina3 /= 4
                    
                endif

                nContador++

                nNotaTemporaria  := 0
                nFaltaTemporaria := 0

            enddo

            nContadorReprovadas := 0
            nValidador1 := 0
            nValidador2 := 0
            nValidador3 := 0

            if nSerie <= 4 //Veriricador notas conforme a serie

                if nNotaDisciplina1 < 60
                    
                    cMensagemReprovado1 += alltrim( cDisciplina1 ) + " "
                    nContadorReprovadas++
                    nValidador1 := 1

                elseif nNotaDisciplina2 < 60

                    cMensagemReprovado2 += alltrim( cDisciplina2 ) + " "
                    nContadorReprovadas++
                    nValidador2 := 1
                    

                elseif nNotaDisciplina3 < 60

                    cMensagemReprovado3 += alltrim( cDisciplina3 ) + " "
                    nContadorReprovadas++
                    nValidador3 := 1
                
                endif

            elseif nSerie >= 5

                if nNotaDisciplina1 < 70
                    
                    cMensagemReprovado1 += alltrim( cDisciplina1 ) + " "
                    nContadorReprovadas++
                    nValidador1 := 1

                elseif nNotaDisciplina2 < 70

                    cMensagemReprovado2 += alltrim( cDisciplina2 ) + " "
                    nContadorReprovadas++
                    nValidador2 := 1
                    

                elseif nNotaDisciplina3 < 70

                    cMensagemReprovado3 += alltrim( cDisciplina3 ) + " "
                    nContadorReprovadas++
                    nValidador3 := 1
                
                endif



            endif

            if nSerie <= 3

                if nFaltaDisciplina1 > 6 .and. nValidador1 == 0
                    
                    cMensagemReprovado1 += alltrim( cDisciplina1 ) + " Por Falta "
                    nContadorReprovadas++
                
                elseif nFaltaDisciplina1 > 6 .and. nValidador == 1    

                    cMensagemReprovado1 += " e por falta"

                endif

                if nNotaDisciplina2 < 6 .and. nValidador2 == 0

                    cMensagemReprovado2 += alltrim( cDisciplina2 ) + " Por Falta"
                    nContadorReprovadas++

                elseif nFaltaDisciplina2 > 6 .and. nValidador == 1    

                    cMensagemReprovado2+= " e por falta"                
                
                endif

                if nNotaDisciplina3 < 6 .and. nValidador3 == 0

                    cMensagemReprovado3 += alltrim( cDisciplina3 ) + " Por Falta"
                    nContadorReprovadas++
                
                elseif nFaltaDisciplina3 > 6 .and. nValidador == 1    

                    cMensagemReprovado1 += " e por falta"
                                
                endif
            
            elseif nSerie >=4

                if nFaltaDisciplina1 > 8 .and. nValidador1 == 0
                    
                    cMensagemReprovado1 += alltrim( cDisciplina1 ) + " Por Falta "
                    nContadorReprovadas++
                
                elseif nFaltaDisciplina1 > 8 .and. nValidador == 1    

                    cMensagemReprovado1 += " e por falta"

                elseif nNotaDisciplina2 < 8 .and. nValidador2 == 0

                    cMensagemReprovado2 += alltrim( cDisciplina2 ) + " Por Falta"
                    nContadorReprovadas++

                elseif nFaltaDisciplina2 > 8 .and. nValidador == 1    

                    cMensagemReprovado2+= " e por falta"                

                elseif nNotaDisciplina3 < 8 .and. nValidador3 == 0

                    cMensagemReprovado3 += alltrim( cDisciplina3 ) + " Por Falta"
                    nContadorReprovadas++
                
                elseif nFaltaDisciplina3 > 8 .and. nValidador == 1    

                    cMensagemReprovado1 += " e por falta"
                                
                endif



            endif


        




        enddo



    endif*/

