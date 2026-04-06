Algoritmo "EXC19L04B"
//
//

// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 10/10/2025

Var

   v1,v2,v3:vetor[1..7] de inteiro
   i: inteiro



inicio

   para i de 1 ate 7 faca
      escreval ("Digite um n�mero: ")
      leia (v1[i])
      escreval ("Digite outro numero para somar: ")
      leia (v2[i])
      v3[i] := (v1[i] + v2[i])
   fimpara
   escreval(" ")

   limpatela
   
   escreval("A soma dos valores foi de:  ")

   para i de 1 ate 7 faca
      escreval (v1[i], " + ",v2[i], " = ", v3[i])
   fimpara



Fimalgoritmo