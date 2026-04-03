setcolor('/W')
clear

cClassificacao := space (35)
nCodigo        := 0
cCor           := space (5)

@ 01,01 to 01,40 color 'R/W'



@ 00,01 say "CODIGO" color 'GR+/W'
@ 00,11 say "CLASSIFICACAO" color 'GR+/W'
@ 02,01 say "1" color 'N/W'
@ 02,11 say "Alimento nao-perecivel" color 'N/W'
@ 03,01 say "2 a 4" color 'B/W'
@ 03,11 say "Alimento perecivel" color 'B/W'
@ 04,01 say "5 e 6" color 'G/W'
@ 04,11 say "Vestuario" color 'G/W'
@ 05,01 say "7" color 'R/W'
@ 05,11 say "Higiene pessoal" color 'R/W'
@ 06,01 say "8 a 15" color 'GR+/W'
@ 06,01 say "Limpeza e utensilios domesticos" color 'GR+/W'
@ 08,01 say "Digite o cod. do produto: "

@ 08,28 get nCodigo picture '99' valid nCodigo > 0
read

if nCodigo == 1

   cClassificacao  := "Alimento nao-perecivel"
   cCor := 'N/W'

elseif nCodigo >=2 .and. nCodigo <= 4

   cClassificacao  := "Alimento perecivel"
   cCor := 'B/W'

elseif nCodigo == 5 .or. nCodigo == 6

   cClassificacao  := "Vestuario"
   cCor := 'G/W'

elseif nCodigo == 7

   cClassificacao  := "Higiene pessoal"
   cCor := 'R/W'

else

   cClassificacao := "C¢digo inv lido"

endif

clear

@ 01,01 say "O c¢digo"
@ 01,10 say nCodigo picture '99'
@ 01,14 say "representa a classificacao"
@ 02,01 say cClassificacao  color cCor



inkey (0)
