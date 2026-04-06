Algoritmo "EXC24L04B"
//
//

// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 12/10/2025

Var

   v: vetor [1..10] de caractere
   m: vetor[1..10,1..4] de real
   l, c: inteiro



inicio

   para l de 1 ate 10 faca
      escreva ("Digite o nome do", l, "� Aluno: ")
      leia (v[l])
      para c de 1 ate 4 faca
         escreva ("Digite a nota", c," de ", (v[l]),": ")
         leia (m[l,c])
         se (m[l,c] > 10) entao
            m[l,c] := m[l,c] / 10
         fimse
      fimpara
      escreval (" ")
      escreval ("_______________________________ ")
      escreval (" ")
   fimpara













Fimalgoritmo