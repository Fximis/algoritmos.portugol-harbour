Algoritmo "EXC15L04B"
//
//

// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 10/10/2025

Var
   vNome, vSit: vetor[1..40] de caractere
   vn1,vn2,vnSub: vetor[1..40] de real
   vm: vetor[1..40] de real
   i: inteiro

   //tentei utilizar procedimento mas ainda n�o consigo (erro com  vetor)
   //tamb�m nao consegui com fun��o --> provavel que seja sintaxe/montagem


inicio


   para i de 1 ate 40 faca
      // Coleta dos dados  + faz a convers�o da nota 0 - 100 para 0 - 10 caso o usu�rio digite valor > 10
      escreva ("Digite o nome do", i, "� aluno: ")
      leia (vNome[i])

      escreva ("Digite a nota 01 do ",i, "� aluno: ")
      leia(vn1[i])

      se (vn1[i] > 10) entao
         vn1[i] := vn1[i] / 10
      fimse

      escreva ("Digite o nota 02 do", i, "� aluno: ")
      leia (vn2[i])

      se  (vn2[i] > 10) entao
         vn2[i] := vn2[i] / 10
      fimse

      escreva ("Digite o nota de sub do", i, "� aluno: ")
      leia (vnSub[i])
      
      se (vnSub[i] > 10) entao
         vnSub[i] := vnSub[i] /10
      fimse

      //verifica se haver� substitui��o de alguma nota
      se (vnSub[i] > vn1[i]) entao
         vn1[i] := vnSub[i]
      senao
         se (vnSub[i] > vn2[i]) entao
            vn2[i] := vnsub[i]
         fimse
      fimse

      //calculo e armazenamento da media do aluno + sitau��o
      vm[i] :=  (vn1[i] + vn2[i])/2
      se (vm[i] >= 6.0) entao
         vSit[i] := "Aprovado"
      senao
         vSit[i] := "Reprovado"
      fimse
      limpatela
   fimpara

   escreval ("============== BOLETIM DO COLEGIO MORENO ============== ")
   escreval (" ")
   escreval ("NOME         NOTA 01 - NOTA 02 - NOTA SUB - MEDIA - SITUA��O")
   escreval (" ")

   para i de 1 ate 40 faca
      escreval (" ")
      escreval (vNome[i]:14, vn1[i]:5:1,"   ", vn2[i]:5:1,"      ", vnSub[i]:5:1,"     ", vm[i]:5:1,"    ", vSit[i])
      escreval("____________________________________________________________")

   fimpara


Fimalgoritmo