Algoritmo "EXC26L04B"
//
//
// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 12/10/2025

Var

   m: vetor[1..4,1..4] de inteiro
   l,c, cont: inteiro

inicio
   cont := 0

   para l de 1 ate 4 faca
      para c de 1 ate 4 faca
         escreva("digite um valor para a posi��o", l, " x", c, ": ")
         leia (m[l,c])
      fimpara
   fimpara

   para l de 1 ate 4 faca
      para c de 1 ate 4 faca

         se ((l+c) % 2 <> 0) entao
            se ((m[l,c]) % 2 = 0) entao
               cont := cont + 1
            fimse
         fimse
      fimpara
   fimpara



   escreval ("o total de elementos pares dentro da matriz com endere�os somados resultantes em �mpar � de: ", cont)














Fimalgoritmo