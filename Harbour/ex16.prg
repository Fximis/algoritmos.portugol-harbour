clear

cNome             := space(20)
nContador         := 1
nCoordenadaLinha  := 1
nCoordenadaColuna := 1
nRepeticaoNome    := 0

@00,00 to 13,80

@ 01,01 say "Digite seu nome: "
@ 01,40 say "Quantas vezes quer repetir?"

@ 01,18 get cNome picture '@!' valid !empty(cNome)
@ 01,70 get nRepeticaoNome picture '99999' valid nRepeticaoNome > 0
read

clear

do while nContador < nRepeticaoNome + 1

   @ nCoordenadaLinha++,nCoordenadaColuna say + alltrim(str(nContador++)) + " - " + alltrim(cNome) + " " color "W/N"


   if nCoordenadaLinha >= 11
      nCoordenadaColuna += 30
      nCoordenadaLinha  := 1
      @ nCoordenadaLinha, nCoordenadaColuna - 3  to nCoordenadaLinha + 10, nCoordenadaColuna - 3
   endif

   if nCoordenadaColuna >= 80
      inkey(1)
      clear
      nCoordenadaColuna := 1
   endif

enddo

inkey(1)
