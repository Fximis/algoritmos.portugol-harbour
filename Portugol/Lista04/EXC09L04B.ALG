Algoritmo "EXC09L04B"
//
//
// Descri��o   : Gere randomicamente um vetor contendo 20 elementos do tipo inteiro (n�o
// repetidos) e apresente ao usu�rio.
// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 10/10/2025

Var
   v1: vetor[1..20] de inteiro
   v2: vetor[1..20] de logico
   i, sort: inteiro

inicio

   para i de 1 ate 20 faca
      v2[i] := falso
   fimpara

   para i de 1 ate 20 faca

      repita
         sort := randi(20)+1

      ate (v2[sort]) = falso)

      v2[sort] := verdadeiro
      v1[i] := sort
   fimpara
   
   para i de 1 ate 20 faca
        escreval (v1[i])
   fimpara





Fimalgoritmo