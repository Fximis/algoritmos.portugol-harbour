clear

nValor1  := 0
nValor2  := 0
nValor3  := 0
nValor4  := 0
nMaior   := 0
cPosicao := space(10)

@ 01,01 say "Digite 3 valores inteiros para verificar qual o maior:"

@ 01,58 get nValor1 picture '999' valid nValor1 > 0
@ 01,62 get nValor2 picture '999' valid nValor2 > 0 .and. !(nValor2 = nValor1)                                                        color 'B/N'
@ 01,66 get nValor3 picture '999' valid nValor3 > 0 .and. !(nValor3 = nValor2) .and. !(nValor3 = nValor1)                             color 'B/N'
@ 01,70 get nValor4 picture '999' valid nvalor4 > 0 .and. !(nValor4 = nValor3) .and. !(nValor4 = nValor2) .and. !(nValor4 = nValor1)  color 'B/N'
read

nMaior   := nValor1
cPosicao := 'Primeiro valor digitado'

if nValor2 > nMaior

   nMaior   := nValor2
   cPosicao := 'Segundo valor digitado'

endif

if nValor3 > nMaior

   nMaior   := nValor3
   cPosicao := 'Terceiro valor digitado'

endif

if nValor4 > nMaior

   nMaior   := nValor4
   cPosicao := 'Quarto valor digitado'

endif

@ 03,01 say "O maior valor �: " + alltrim(Str(nMaior)) + " sendo o " + alltrim(cPosicao)


inkey(0)
