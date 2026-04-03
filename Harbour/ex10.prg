clear

nIdade := 0

@ 01,01 say "Digite a sua idade:"

@ 01,20 get nIdade picture '999' valid (nIdade > 0) .and. (nIdade < 130)
read

if nIdade > 21
   @ 02,01  say "Sua idade est  dentro do parƒmetro"
   @ 03, 01 say "V¢ce possui mais de 21 anos"
   else
      @ 02,01 say "Vocˆ nao possui mais de 21 anos"
endif

InKey(0)

