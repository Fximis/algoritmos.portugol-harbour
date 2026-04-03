clear

cNome      := space(20)
nIdade     := 0
cCategoria := "Sem categoria"

@ 01,01 say "Seu nome: "
@ 02,01 say "Sua idade: "

@ 01,14 get cNome  picture "@!"  valid !empty(cNome)
@ 02,16 get nIdade picture '999' valid nIdade > 0
read

clear

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

@ 01,01 say alltrim(cNome) + " Sua categoria �: " + cCategoria

inkey(0)
