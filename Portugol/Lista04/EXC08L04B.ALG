Algoritmo "EXC08L04B"
//
//
// Descri��o   : Gere randomicamente um vetor contendo 14 elementos do tipo inteiro e
//apresente ao usu�rio
// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 10/10/2025

Var
   v: vetor[1..14] de inteiro
   i: inteiro

inicio

   para i de 1 ate 14 faca
      v[i] := randi(14)
      escreval (i:2,"� elemento: ",v[i]:3)
   fimpara




Fimalgoritmo