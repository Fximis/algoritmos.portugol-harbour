Algoritmo "EXC25L04B"
//
//

// Autor(a)    : Fellipe Miquel�o Schmidt.
// Data atual  : 12/10/2025

Var

   v: vetor [1..10] de caractere
   m: vetor[1..10,1..5] de real
   mediaT:real
   l, c: inteiro
   mostramedia: logico


inicio
   mostramedia := verdadeiro
   mediaT := 0

   para l de 1 ate 10 faca
      //identifica o aluno
      escreva ("Digite o nome do", l, "� Aluno: ")
      leia (v[l])

      //captura a nota 1-4 do aluno
      para c de 1 ate 4 faca
         escreva ("Digite a nota", c," de ", (v[l]),": ")
         leia (m[l,c])

         //conversor de nota 0-100 para 0-10
         se (m[l,c] > 10) entao
            m[l,c] := m[l,c] / 10
         fimse

         //media da turma
         mediaT := mediaT + ((m[l,c])/40)
      fimpara

      //reseta o calculo da m�dia do aluno
      m[l,5] :=0

      //calcula e armazena a m�dia do aluno

      m[l,5] := ((m[l,1]) + (m[l,2]) + (m[l,3]) + (m[l,4])) / 4


      escreval (" ")
      escreval ("_________________________________ ")
      escreval (" ")
   fimpara

   limpatela

   para l de 1 ate 10 faca
      escreval("Nota de ", (v[l]), ":")
      escreval (" ")
      para c de 1 ate 4 faca
         escreval ("nota",c, ": ", m[l,c]:3:1, " ")
      fimpara
      Repita (mostramedia)
         escreval (" ")
         escreval ("m�dia final de ",(v[l]),": ", m[l,5]:3:1)
         mostramedia := falso
         escreval (" ")
         escreval ("_________________________________")
         escreval (" ")
      ate (mostramedia = falso)
   fimpara


   escreval(" ")
   escreval (" ")
   escreval ("M�dia final da TURMA: ", mediaT:3:1)













Fimalgoritmo