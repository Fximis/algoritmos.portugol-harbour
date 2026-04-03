clear

nQuantidade1 :=0
nSubtotal1   := 0
cProduto1    := space(20)
nValor1      := 0

nQuantidade2 :=0
nSubtotal2   := 0
cProduto2    := space(20)
nValor2      := 0

nQuantidade3 :=0
nSubtotal3   := 0
cProduto3    := space(20)
nValor3      := 0

nTotal      := 0

@ 01,08 to 20,68 //quadrado maior
@ 21,48 to 23,68

@ 02,13 to 19,13 //divis�ria vertical
@ 02,34 to 19,34
@ 02,44 to 19,44
@ 02,53 to 19,53

@ 03,09 to 03,67 //divis�ria horizontal

@ 02,09 say "item"     picture '@!'
@ 02,20 say "produto"  picture '@!'
@ 02,60 say "subtotal" picture '@!'
@ 02,46 say "valor"    picture '@!'
@ 02,38 say "qtd"      picture '@!'
@ 04,09 say "1"
@ 05,09 say "2"
@ 06,09 say "3"



@ 04,14 get cProduto1    picture '@!'        valid !empty(cProduto1)
@ 04,36 get nQuantidade1 picture '99.99'     valid (nQuantidade1 > 0)
@ 04,46 get nValor1      picture '@e 999.99' valid (nValor1 > 0)
read

nSubtotal1 := nQuantidade1 * nValor1
nTotal     += nSubtotal1

@ 04,60 say nSubtotal1   picture '@e 999.99'
@ 22,49 say "Total: R$"
@ 22,61 say nTotal       picture '@e 9999.99'


@ 05,14 get cProduto2    picture '@!'        valid !empty(cProduto2)
@ 05,36 get nQuantidade2 picture '99.99'     valid (nQuantidade2 > 0)
@ 05,46 get nValor2      picture '@e 999.99' valid (nValor2 > 0)
read

nSubtotal2 := nQuantidade2 * nValor2
nTotal     += nSubtotal2

@ 05,60 say nSubtotal2   picture '@e 999.99'
@ 22,61 say nTotal       picture '@e 9999.99'

@ 06,14 get cProduto3    picture '@!'        valid !empty(cProduto3)
@ 06,36 get nQuantidade3 picture '99.99'     valid (nQuantidade3 > 0)
@ 06,46 get nValor3      picture '@e 999.99' valid (nValor3 > 0)
read

nSubtotal3 := nQuantidade3 * nValor3
nTotal     += nSubtotal3

@ 06,60 say nSubtotal3   picture '@e 999.99'
@ 22,61 say nTotal       picture '@e 9999.99'

inkey(0)
