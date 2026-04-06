Algoritmo "EXC04L04B"
//
//
// Descri��o   : Construir um algoritmo que Leia um vetor de 15 elementos, iniciando a partir do �ltimo elemento (15�).
// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 10/10/2025
Var
   v: vetor[1..15] de caractere  //utilizei caractere para abranger n� e letras.
   i: inteiro

Inicio

   para i de 15 ate 1 passo -1 faca
      escreval ("digite o", i,"� elemento")
      leia (v[i])
   fimpara
   limpatela
   escreval ("elementos digitados: ")
   para i de 15 ate 1 passo -1 faca
        escreval (v[i])
   fimpara

Fimalgoritmo