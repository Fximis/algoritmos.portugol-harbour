Algoritmo "EXC22L04B"
//
//

// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 10/10/2025

Var

   m:vetor[1..4,1..3] de inteiro
   l, c: inteiro



inicio

   escreval("MATRIZ 4X3")
   escreval (" ")

   para l de 1 ate 4 faca
      para c de 1 ate 3 faca
         escreval ("Posi��o", l," x",c,":")
         leia (m[l,c])
      fimpara
   fimpara

   escreval(" ")
   escreval("_-_-_-_-_-_-_ MATRIZ _-_-_-_-_-_-_")
   escreval(" ")
   
   para l de 1 ate 4 faca
      para c de 1 ate 3 faca
         escreva ("[",m[l,c]:2,"]")
      fimpara
      escreval()
   fimpara

Fimalgoritmo