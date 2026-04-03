set Date British
set Epoch to 1940

clear

cCorAlerta := "B/N"
cCor := 'G/N'

aOpcoesCliente   := {"SIM", "NAO"}
aOpcoesProdutos  := {"Continuar","Abandonar","Faturar"}
aOpcoesPagamento := {"Continuar", "Abandonar"}

cMensagemCliente := "Deseja sair?"
cMensagemGeral   := "Vocˆ deseja:"

cCliente := space(20)

nLimite  := 0

nContador := 0

nLinha  := 4
nColuna := 14

nItem       := 1
cProduto    := 0
nValor      := 0
nQuantidade := 0
nSubtotal   := 0
nTotal      := 0

cFormaPagamento := space(1)
nParcelas       := 0
nValorParcelado := 0

dDataPedido := cTod("")
dDataVenda  := date()

do while .t.

   @ 01,01 say "Digite o seu Nome: "
   @ 02,01 say alltrim(cCliente) + " Qual o limite que deseja gastar?"
   @ 04,01 say "Insira a data do pedido"

   @ 01,20 get cCliente picture '@!'          valid !empty(cCliente)
   @ 03,01 get nLimite  picture '@e 9,999.99' valid nLimite > 0
   @ 05,01 get dDataPedido                    valid !empty (dDataPedido) .and. dDataPedido <= dDataVenda
   read

   if lastkey() == 27
      nOpcao := Alert(cMensagemCliente, aOpcoesCliente,cCorAlerta)
      if nOpcao == 1
         exit
      endif
      loop
   endif

   clear

   @ 01,08 to 20,69 //quadrado maior
   @ 21,48 to 23,69

   @ 02,13 to 19,13 //divis¢ria vertical
   @ 02,34 to 19,34
   @ 02,44 to 19,44
   @ 02,53 to 19,53

   @ 03,09 to 03,67 //divis¢ria horizontal

   @ 02,09 say "item"     picture '@!'
   @ 02,20 say "produto"  picture '@!'
   @ 02,60 say "subtotal" picture '@!'
   @ 02,46 say "valor"    picture '@!'
   @ 02,38 say "qtd"      picture '@!'

   do while .t.

      if nLinha >= 10
         nLinha := 4
         clear
         @ 01,08 to 20,69 //quadrado maior
         @ 21,48 to 23,69
         @ 02,13 to 19,13 //divis¢ria vertical
         @ 02,34 to 19,34
         @ 02,44 to 19,44
         @ 02,53 to 19,53
         @ 03,09 to 03,67 //divis¢ria horizontal
      endif

      if nColuna >= 51
         nColuna := 14
         nLinha  ++
         nItem   ++
      endif

      @ nLinha,nColuna - 4 say alltrim(str(nItem))

      @ nLinha,nColuna get cProduto picture '@!'       valid !empty(cProduto)

      nColuna += 22

      @ nLinha,36 get nQuantidade   picture '99.99'     valid (nQuantidade > 0)

      nColuna += 10

      @ nLinha,nColuna get nValor   picture '@e 999.99' valid (nValor > 0)
      read

      if lastkey() == 27
         nOpcao := Alert(cMensagemGeral,aOpcoesProdutos,cCorAlerta)
         if nOpcao == 1
            loop
         elseif nOpcao == 2
            exit
         else
            exit
         endif
      endif

      nColuna += 10

      nSubtotal  := nQuantidade * nValor
      nTotal     += nSubtotal

      if nTotal > nLimite
         cCor := 'R/N'
      endif

      @ nLinha,nColuna say nSubtotal picture '@e 9,999.99'
      @ 22,51 say "Total: R$ " + Transform(nTotal,'@e 9,999.99') color cCor

   enddo


   if nOpcao == 2
      loop
   endif


   @ 23,01 say "Pressione uma tecla para continuar"
   inkey(0)

   clear

   //---------------------------- PAGAMENTO

   do while .t.

   @ 01,01 say alltrim(cCliente)+ ", qual a forma de pagamento? (V/P)"

   @ 02,01 get cFormaPagamento picture '@!' valid cFormaPagamento $ 'VP'
   read

    if lastkey() == 27
         nOpcao := Alert(cMensagemGeral,aOpcoesPagamento,cCorAlerta)
         if nOpcao == 1
            loop
         endif
         exit
    endif


   if cFormaPagamento == 'P'

      @ 01,01 say "Em quantas vezes deseja pagar? (1-10)"

      @ 02,01 get nParcelas picture '99' valid nParcelas > 0 .and. nParcelas < 11
      read

       if lastkey() == 27
         nOpcao := Alert(cMensagemGeral, aOpcoesProdutose,cCorAlerta)
         if nOpcao == 1
            loop
         endif
       exit
       endif

      nValorParcelado := nTotal / nParcelas
   endif

   clear

   @ 12,30 say "PROCESSANDO. . . . ."
   inkey(1)
   @ 12,30 say "PROCESSANDO . . . . ."
   inkey(2)
   @ 12,30 say "PROCESSANDO. . . . ."
   inkey(1)

   clear

   @ 01,01 say "TELA DE PAGAMENTO"

   inkey(0)

   enddo
enddo





/*clear

//@ 01,08 to 20,69 color 'GR+/GR+'  --> VER COMO PINTAR SO UM QUADRADO
//@ 01,08 to 20,69 SetColor ('/GR+')
SetColor ('W/GR+')
@ 00,07 clear to 23,70
@ 00,08 to 23,70

//clear

@ 01,25 say "S*U*P*E*R*M*E*R*C*A*D*O"

@ 02,25 to 02,48

@ 04,09 say "item"     picture '@!'
@ 04,20 say "produto"  picture '@!'
@ 04,46 say "valor"    picture '@!'
@ 04,38 say "qtd"      picture '@!'
@ 06,09 say "1"
@ 07,09 say "2"
@ 08,09 say "3"
@ 06,14 say alltrim(cProduto1)
@ 06,36 say alltrim(str(nQuantidade))
@ 06,46 say transform(nValor1,'@e 999.99')
@ 07,14 say alltrim(cProduto2)
@ 07,36 say alltrim(str(nQuantidade2))
@ 07,46 say transform(nValor2,'@e 999.99')
@ 08,14 say alltrim(cProduto3)
@ 08,36 say alltrim(str(nQuantidade3))
@ 08,46 say transform(nValor3,'@e 999.99')
@ 10,09 say "TOTAL"
@ 10,46 say "R$ " + transform(nTotal, '@e 9,999.99')
@ 12,09 say "Cliente: " + alltrim(cCliente) picture '@!'
//@ 15,09 say "Data do pedido: " + alltrim(str(dDataPedido))
//@ 16,09 say "Data da Venda: "  + alltrim(str(dDataVenda))

@ 15,09 say "Agendamento : "         + dtoc(dDataPedido)
@ 16,09 say "Pedido realizado:"      + dtoc(dDataVenda)

if cFormaPagamento == 'P'

   @ 13,09 say "Qtd de parcelas:" picture '@!'
   @ 13,46 say alltrim(str(nParcelas))
   @ 14,09 say "Valor parcelado:" picture '@!'
   @ 14,46 say transform (nValorParcelado, '@e 9,999.99')

endif */


