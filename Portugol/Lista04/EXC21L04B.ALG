Algoritmo "EXC21L04B"
//
//

// Autor(a)    : Fellipe Miquel�o Schmidt.
// Data atual  : 10/10/2025

Var

   v1:vetor[1..5] de inteiro
   v2: vetor[1..5] de caractere
   i: inteiro



inicio

   escreval("GERADOR ALEAT�RIO 65-90")
   
   para i de 1 ate 5 faca
        v1[i] := randi(26)+65
        se (v1[i] % 2 = 0) entao
           v2[i] := "PAR"
        senao
             v2[i] := "�MPAR"
        fimse
   fimpara
   para i de 1 ate 5 faca
        escreval (v1[i], " � ", v2[i])
   fimpara


Fimalgoritmo