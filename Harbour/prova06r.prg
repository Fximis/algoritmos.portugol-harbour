set date british
set epoch to 1940

clear

/* do While .t.

   cValidador := 'NAO'

   cSenha := Space(15)
   cLogin := Space(15)

   @ 01,30 say "Login" color 'B/N'

   @ 09,36 to 13,46
   @ 11,37 to 11,45
   @ 10,30 say "Login:"
   @ 12,30 say "Senha:"

   @ 10,37 get cLogin color 'W/N'
   @ 12,37 get cSenha color 'W/N'
   read

    if lastkey() == 27
       nOpcao := Alert('Sair?', {'Sim','Nao'}, 'B/N')
       if nOpcao == 1 
          exit
       endif
       loop       
   endif

   if alltrim(cLogin) == 'JOSE' .and. alltrim(cSenha) == '432mudar123'
      cValidador := 'OK'
      exit 
   else
      Alert("Login e/ou Senha invalido(s)")
   endif

enddo  */


do while .t. //cValidador == 'OK'

   clear
   
   @ 01,01 prompt "1. Pedido"
   @ 02,01 prompt "2. Sair"
   menu to nEscolha

   if nEscolha == 1

   cNome           := Space(40)
   cNomeTecnico    := Space(30)
   cDescricaoEquip := Space(40)
   cEntrega        := Space(1)

   nContador      := 1
   nCreditoLimite := 0

   dDataServico     := ctod(" ")
   dDataEquipamento := ctod(" ")

   nColeta       := 0
   nOrdemServico := 0 

   nTaxaEntrega := 0

   cEndereco    := Space(20)
   cBairro      := Space(10)
   cReferencia  := Space(10)
   cTelefone    := Space(11)
   cStringDados := (" ")
   nGarantia    := 0
   nGarantiaMax := 0

   nSaldoGarantia := 0

   cDadosServico := Space(1)
   nValorTotal   := 0
   nLinha := 7
   cStringTeste := (" ")
      
      do while .t.
         clear

         nOrdemServico++
         
         @ 01,01 say "Ordem de servico.......:" 
         @ 02,01 say "Nome...................:"
         @ 03,01 say "Data Ordem Servico.....:"
         @ 04,01 say "Nome Tecnico...........:"
         @ 05,01 say "Descricao equipamento..:"
         @ 06,01 say "Data Compra Equipamento:"
         @ 07,01 say "Entrega Domicilio?[S/N]:" 
         @ 08,01 say "Limite de credito......:" 
         @ 01,26 say alltrim(str(nOrdemServico))

         @ 02,26 get cNome            picture '@!'          valid !Empty(cNome)            color 'W/N'
         @ 03,26 get dDataServico                           valid !Empty(dDataServico)     color 'W/N'
         @ 04,26 get cNomeTecnico     picture '@!'          valid !Empty(cNomeTecnico)     color 'W/N'
         @ 05,26 get cDescricaoEquip  picture '@!'          valid !Empty(cDescricaoEquip)  color 'W/N'
         @ 06,26 get dDataEquipamento                       valid !Empty(dDataEquipamento) color 'W/N' 
         @ 07,26 get cEntrega         picture '@!'          valid cEntrega $ 'SN'          color 'W/N'
         @ 08,26 get nCreditoLimite   picture '@E 9,999.99' valid nCreditoLimite >= 0      color 'W/N'
         read

         if lastkey() == 27
            nOpcao := Alert('Sair?', {'Sim','Nao'}, 'B/N')
            if nOpcao == 1 
               exit
            endif
            loop       
         endif

         if cEntrega == 'S'
            nTaxaEntrega := 2/100
            @ 10,01 say "Endereco..:"
            @ 11,01 say "Bairro....:"
            @ 12,01 say "Referencia:"
            @ 13,01 say "Telefone..:"

            @ 10,12 get cEndereco   picture '@!' valid !Empty(cEndereco)   color 'W/N' 
            @ 11,12 get cBairro     picture '@!' valid !Empty(cBairro)     color 'W/N'
            @ 12,12 get cReferencia picture '@!' valid !Empty(cReferencia) color 'W/N'
            @ 13,12 get cTelefone   picture '@!' valid !Empty(cTelefone)   color 'W/N' 
            read

            if lastkey() == 27
               nOpcao := Alert('Sair?', {'Sim','Nao'}, 'B/N')
               if nOpcao == 1 
                  exit
               endif
               loop       
            endif

           // cStringDados := cEndereco + cBairro + cReferencia + cTelefone
            
         endif

         nGarantia := year(dDataEquipamento) - year(dDataServico)

         if month( dDataEquipamento ) < month( dDataServico )
            nGarantia -= 1
         endif    

         if month( dDataEquipamento ) = month( dDataServico ) .and. day( dDataEquipamento ) < day( dDataServico )
            nGarantia -= 1
         endif

         @ 15,02 say "Deseja Realizar: [P]rodutos ou [S]ervico?"
         
         @ 02,45 get cDadosServico picture '@!' valid cDadosServico $ 'PS'
         read

         if lastkey() == 27
            nOpcao := Alert('Deseja', {'Sair', 'Continuar',}, 'R/W')
            if nOpcao == 1
                exit
            endif
            loop 
         endif
   
         if cDadosServico == 'P'

            nGarantiaMax   := 2
            Clear

            do While .t.

               nDesconto          := 0
               nPrecoUnitario     := 0
               nQuantidadeProduto := 0
               cDescricaoProduto  := Space(40)

               @ 01,01 say "Descricao do Produto:" 
               @ 02,01 say "Quantidade..........:"
               @ 03,01 say "Preco Unitario......:"
               @ 04,01 say "Desconto (%)........:"
               @ 05,01 say "Valor Pedido........:"
               @ 23,48 say "VALOT TOTAL:"

               @ 01,23 get cDescricaoProduto  picture '@!'             valid !Empty(cDescricaoProduto)  
               @ 02,23 get nQuantidadeProduto picture '99'             valid nQuantidadeProduto >= 0
               @ 03,23 get nPrecoUnitario     picture '@E 9999,999.99' valid nPrecoUnitario >= 0
               @ 04,23 get nDesconto          picture '99.99' 
               read

               if lastkey() == 27
                  nOpcao := Alert('Deseja', {'Sair', 'Continuar','Novo Cadastro'}, 'R/W')
                  if nOpcao == 1 .or. nOpcao == 3
                     exit
                  endif
                  loop 
               endif

               if nValorTotal + nPrecoUnitario > nCreditoLimite 
               
                  Alert('Quantidade ultrapassou o orcamento. Supervisor necessario')
               
                  Clear

                  cLoginSupervisor := Space(15)
                  cSenhaSupervisor := Space(15)
                  @ 01,01 say "Login:"
                  @ 02,01 say "Senha:"

                  @ 01,08 get cLoginSupervisor
                  @ 02,08 get cSenhaSupervisor
                  read

                  if lastkey() == 27
                     alert('Nao autorizado a sair. Digite a senha')
                  endif
                 
                  if alltrim(cSenhaSupervisor) == 'AUTORIZA99'
                     Alert ('Supervisor autorizado - Compra prosseguira normalmente')
                  else
                     Alert ('Supervisor nao reconhecido - ultimo item nao computado')
                     loop
                  endif
               
               endif
               
               nTotalPedido := nQuantidadeProduto * nPrecoUnitario *(1-(nDesconto/100))
               nDesconto := nQuantidadeProduto * nPrecoUnitario * (nDesconto/100)
               nValorTotal += nTotalPedido - ndesconto

               if nValorTotal < 0
                  nValorTotal := 0
               endif


               @ 05,22 say transform(nTotalPedido,'@E 9999,999.99')

               @ 23,62 say Transform(nValorTotal, '@E 9999,999.99')

               if nLinha >= 21
                  @ 07,01 clear to 22,79
                  nLinha := 7
               endif

               if nGarantia <= nGarantiaMax
                  nSaldoGarantia += nValorTotal
               endif
               
               cStringTeste := alltrim(str(nContador)) + ". " + alltrim(cDescricaoProduto) + "  " + alltrim(str(nQuantidadeProduto)) + "  " + alltrim(str(nPrecoUnitario)) + "  " + alltrim(str(nDesconto)) + "  " + transform(nTotalPedido,'@E 9999,999.99')

               @ nLinha+2,01 say cStringTeste 

               nContador++
               nLinha++
            
            
            enddo

            if nOpcao == 3 
               loop
            endif
         
         

         else
            alert ('Programando servico ainda')

         endif



      enddo



   elseif nEscolha == 2
      exit
   endif
enddo










/*
set date british
set epoch to 1940
clear

// --- TELA DE LOGIN 
do while .t.
   cLogin := space(10) ; cSenha := space(15)
   @ 10,10 say "Login:" get cLogin
   @ 11,10 say "Senha:" get cSenha
   read
   if lastkey() == 27; cancel; endif
   
   if alltrim(cLogin) == "JOSE" .and. alltrim(cSenha) == "432mudar123"
      exit
   else
      alert("Acesso Negado")
   endif
enddo

// --- INICIO DO SISTEMA ---
nNumOS := 0

do while .t.
   clear
   @ 01,01 prompt "1. Nova Ordem de Servico"
   @ 02,01 prompt "2. Sair"
   menu to nOpcao
   if nOpcao == 2; exit; endif

   // Reset de Variaveis do Cabecalho
   nNumOS++
   cCliente    := space(40)
   dDataOS     := date() // Data da Ordem
   cTecnico    := space(30)
   cEquip      := space(40)
   dDataCompra := ctod("  /  /  ")
   cEntrega    := "N"
   nLimiteCred := 0
   
   // Endereco
   cEnd := space(40) ; cBairro := space(20) ; cRef := space(20) ; cFone := space(15)
   
   clear
   @ 01,01 say "NOVA OS: " + str(nNumOS, 4)
   @ 02,01 say "Cliente.......:" get cCliente    valid !empty(cCliente)
   @ 03,01 say "Data OS.......:" get dDataOS
   @ 04,01 say "Tecnico.......:" get cTecnico    valid !empty(cTecnico)
   @ 05,01 say "Equipamento...:" get cEquip      valid !empty(cEquip)
   @ 06,01 say "Data Compra...:" get dDataCompra valid !empty(dDataCompra)
   @ 07,01 say "Entrega (S/N).:" get cEntrega    picture "!" valid cEntrega $ "SN"
   @ 08,01 say "Limite Credito:" get nLimiteCred picture "@E 99999.99"
   read
   if lastkey() == 27; loop; endif

   if cEntrega == "S"
      @ 10,01 say "Endereco......:" get cEnd
      @ 11,01 say "Bairro........:" get cBairro
      @ 12,01 say "Referencia....:" get cRef
      @ 13,01 say "Telefone......:" get cFone
      read
   endif

   // --- LOOP DE ITENS (PRODUTOS E SERVICOS) ---
   nTotalGeral     := 0
   nTotalComissao  := 0
   nLinha          := 16
   
   clear
   @ 01,01 say "CLIENTE: " + cCliente
   @ 02,01 say "EQUIPAM: " + cEquip
   @ 03,01 say "--------------------------------------------------------"
   @ 04,01 say "ITEM TIPO DESCRICAO           VALOR  DESC  GARANT  TOTAL"

   do while .t.
      cTipo := space(1)
      @ 06,01 say "Tipo: [P]roduto / [S]ervico / [F]im: " get cTipo picture "!" valid cTipo $ "PSF"
      read
      if lastkey() == 27 .or. cTipo == "F"; exit; endif
      
      cDescItem := space(30)
      nQtd      := 1
      nPreco    := 0
      nPercDesc := 0
      nPercCom  := 0 // Apenas para servico
      
      if cTipo == "P" // --- PRODUTO ---
         @ 07,01 say "Descricao do Produto:" get cDescItem
         @ 08,01 say "Quantidade..........:" get nQtd picture "999" valid nQtd > 0
         @ 09,01 say "Preco Unitario......:" get nPreco picture "@E 9999.99"
         @ 10,01 say "% Desconto..........:" get nPercDesc picture "99.99"
         read
         
         nBruto := nQtd * nPreco
         nValorDesc := nBruto * (nPercDesc/100)
         nLiquido := nBruto - nValorDesc
         
      elseif cTipo == "S" // --- SERVICO ---
         @ 07,01 say "Descricao Servico...:" get cDescItem
         @ 08,01 say "Preco Servico.......:" get nPreco picture "@E 9999.99"
         @ 09,01 say "% Desconto..........:" get nPercDesc picture "99.99"
         @ 10,01 say "% Comissao Tecnico..:" get nPercCom picture "99.99"
         read
         
         nValorDesc := nPreco * (nPercDesc/100)
         nLiquido := nPreco - nValorDesc
      endif

      // --- VERIFICACAO DE GARANTIA (Ponto chave da prova) ---
      // Calculo de dias de vida do equipamento
      nDiasVida := dDataOS - dDataCompra
      lGarantia := .F.
      
      if cTipo == "P" .and. nDiasVida <= 730 // 2 Anos (365*2)
         lGarantia := .T.
      elseif cTipo == "S" .and. nDiasVida <= 365 // 1 Ano
         lGarantia := .T.
      endif
      
      nValorCobrar := nLiquido
      cMsgGarantia := "NAO"
      
      if lGarantia
         nValorCobrar := 0 // Abate o valor
         cMsgGarantia := "SIM"
         alert("Item coberto pela GARANTIA!")
      endif

      // --- VALIDACAO DE CREDITO (SUPERVISOR) ---
      // Verifica se o NOVO total vai estourar o limite
      if (nTotalGeral + nValorCobrar) > nLimiteCred
         cSenhaSup := space(10)
         nOpcaoSup := alert("LIMITE EXCEDIDO! Chamar Supervisor?", {"Autorizar", "Cancelar Item"})
         
         lAutorizou := .F.
         if nOpcaoSup == 1
            @ 12,40 say "Senha SUPER:" get cSenhaSup color "R/W"
            read
            if alltrim(cSenhaSup) == "AUTORIZA99"
               lAutorizou := .T.
            else
               alert("Senha Invalida!")
            endif
         endif
         
         if !lAutorizou
            loop // VOLTA AO INICIO DO LOOP SEM SOMAR NADA
         endif
      endif

      // --- SE CHEGOU AQUI, ESTA VALIDADO ---
      
      // Calculo comissao tecnico (apenas se nao for garantia e for servico)
      if cTipo == "S" .and. !lGarantia
         nTotalComissao += nLiquido * (nPercCom/100)
      endif
      
      nTotalGeral += nValorCobrar
      
      // Imprime na lista
      @ nLinha, 01 say cTipo + " " + substr(cDescItem,1,20) + " " + str(nLiquido,7,2) + " " + str(nPercDesc,4,1)+"%  " + cMsgGarantia + "    " + str(nValorCobrar,8,2)
      nLinha++
      
      // Limpa area de input para o proximo
      @ 06,00 clear to 13,79 
      
      // Atualiza totais na tela
      @ 22,01 say "TOTAL OS: " + str(nTotalGeral, 10, 2)
      @ 22,40 say "COMISSAO TEC: " + str(nTotalComissao, 10, 2)
   enddo // Fim do Loop de Itens

   // --- FECHAMENTO (TAXA DE ENTREGA) ---
   if cEntrega == "S"
      nValorTaxa := nTotalGeral * 0.02
      nTotalGeral += nValorTaxa
      alert("Taxa de Entrega (2%) aplicada: " + str(nValorTaxa))
   endif

   // --- FORMAS DE PAGAMENTO ---
   // Se for Zero (Garantia Total), pede Nota Fiscal
   if nTotalGeral == 0
      alert("Garantia Total Cobriu o Servico.")
      cCNPJ := space(14) ; cNumNF := space(10) ; dDataNF := ctod("")
      @ 15,10 say "Dados Nota Fiscal (Obrigatorio):"
      @ 16,10 say "CNPJ....:" get cCNPJ
      @ 17,10 say "Num NF..:" get cNumNF
      @ 18,10 say "Data NF.:" get dDataNF
      read
   else
      // Pagamento em Dinheiro, Cheque, Cartao (Sem repetir)
      nFaltando := nTotalGeral
      cUsados   := "" // String para guardar o que ja usou ("12" = ja usou din e cheque)
      
      do while nFaltando > 0
         clear
         @ 05,05 say "Total a Pagar: " + str(nTotalGeral)
         @ 06,05 say "Faltando.....: " + str(nFaltando)
         
         @ 08,05 prompt "1. Dinheiro"
         @ 09,05 prompt "2. Cheque  "
         @ 10,05 prompt "3. Cartao  "
         menu to nForma
         
         // Validacao de repeticao
         if str(nForma,1) $ cUsados
            alert("Forma de pagamento ja utilizada!")
            loop
         endif
         
         nValorPag := 0
         @ 12,05 say "Valor a pagar nesta forma:" get nValorPag picture "@E 9999.99" valid nValorPag > 0 .and. nValorPag <= nFaltando
         read
         
         nFaltando -= nValorPag
         cUsados += str(nForma,1) // Marca como usado
      enddo
      alert("Pagamento Concluido!")
   endif
   
   // Finaliza e volta pro menu principal
enddo*/