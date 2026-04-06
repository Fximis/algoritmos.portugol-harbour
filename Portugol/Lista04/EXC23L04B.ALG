Algoritmo "EXC23L04B"
//
//

// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 12/10/2025

Var

   m:vetor[1..5,1..5] de inteiro
   l, c: inteiro



inicio

   escreval("MATRIZ 5X5")
   escreval (" ")

   para l de 1 ate 5 faca
      para c de 1 ate 5 faca
         escreva ("Posi��o", l," x",c,": ")
         m[l,c] := randi (100) + 1
         escreval (m[l,c])
      fimpara
   fimpara

   escreval(" ")
   escreval("_-_-_-_-_-_-_ MATRIZ COMPLETA _-_-_-_-_-_-_")
   escreval(" ")

   para l de 1 ate 5 faca
      para c de 1 ate 5 faca
         escreva ("[",m[l,c]:3,"]")
      fimpara
      escreval()
   fimpara

   escreval (" ")
   escreval("_-_-_-_-_-_-_ DIAGONAL PRINCIPAL _-_-_-_-_-_-_")
   escreval (" ")
   
   para l de 1 ate 5 faca
      para c de 1 ate 5 faca
         se (l=c) entao
            escreval (l," x",c,"[",m[l,c]:3,"]")
         fimse
      fimpara
   fimpara

   escreval(" ")
   escreval("_-_-_-_-_-_-_ DIAGONAL SECUND�RIA _-_-_-_-_-_-_")
   escreval (" ")
   
   para l de 1 ate 5 faca
      para c de 1 ate 5 faca
         se (l+c = 6) entao //diagonal sec = soma de lxc = n+1
            escreval (l," x",c,"[",m[l,c]:3,"]")
         fimse
      fimpara
   fimpara

Fimalgoritmo