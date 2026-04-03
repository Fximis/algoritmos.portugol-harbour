clear

nValor1 := 0
nValor2 := 0

@ 00,01 say "Digite o primeiro valor:"
@ 01,01 say "Digite o segundo valor:"

@ 00,26 get nValor1 picture '99' valid nValor1 > 0
@ 01,24 get nValor2 picture '99' valid !(nValor1=nValor2) .and. nValor2 > 0
read

clear

@ 00,01 say "Primeiro valor: " + alltrim(str(nValor1))
//@00,17 say nValor1
@ 01,01 say "Segundo valor: " + alltrim(str(nValor2))
//@01,17 say nValor2

nValor1 := nValor1 + nValor2
nValor2 := nValor1 - nValor2
nValor1 := nValor1 - nValor2

@ 03,01 say "Valores trocados"
@ 05,01 say "Primeiro valor: " + alltrim(str(nValor1))
//@05,17 say nValor1
@ 06,01 say "Segundo valor: " + alltrim(str(nValor2))
//@06,17 say nValor2

