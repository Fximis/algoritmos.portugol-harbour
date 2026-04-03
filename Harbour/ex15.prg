clear

cNome       := space(20)
nContador   := 1

@ 01,01 say "Digite seu nome: "

@ 01,18 get cNome
read

clear

do while nContador < 11

   @ nContador,01 say alltrim(str(nContador)) + " - " + cNome

   nContador++

enddo

inkey(0)
