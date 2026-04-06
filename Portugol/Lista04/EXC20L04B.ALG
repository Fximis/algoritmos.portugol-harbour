Algoritmo "EXC20L04B"
//
//

// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 10/10/2025

Var

   v1:vetor[1..10] de caractere
   i: inteiro



inicio

   para i de 1 ate 10 faca
      escreval ("Digite o", i, "� elemento")
      leia (v1[i])
   fimpara
   limpatela
   
   escreval ("Ordem correta ----------- Ordem inversa")
   para i de 1 ate 10 faca
        escreval (v1[11-i]:20, "        ", v1[i]:20)
   fimpara


Fimalgoritmo