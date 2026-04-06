Algoritmo "EXC12L04B"
//
//

// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 10/10/2025

Var
   v1: vetor[1..5] de caractere
   v2: vetor [1..5] de inteiro
   i: inteiro
   
inicio

   para i de 1 ate 5 faca
        escreval ("digite o", i, "� nome")
        leia (v1[i])
        v2[i] := compr(v1[i])
   fimpara
   limpatela
   para i de 1 ate 5 faca
        escreval ("A quantidade de elementos digitados na", i, "� vez, foi: ", v2[i])
   fimpara


Fimalgoritmo