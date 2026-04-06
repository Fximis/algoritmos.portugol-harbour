Algoritmo "EXC05L04B"
//
//
// Descri��o   : Construir um algoritmo que Leia um vetor de 8 elementos (V1) e preencha um outro (V2) em ordem inversa.
// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 10/10/2025
Var

   v1, v2: vetor[1..8] de caractere
   i,j: inteiro

Inicio

   para i de 1 ate 8 faca
      escreva ("digite o", i, "� elemento: ")
      leia (v1[i])
   fimpara

   j:=0

   para i de 8 ate 1 passo -1 faca
      j:=j+1
      v2[j] := v1[i]
//poderia ter utilizado v2[i] := v1[9-i] e mudar o para -- 1 ate 8; eliminando o J
   fimpara
   limpatela
   escreval ("ordem correta: ")
   escreval (" ")
   para i de 1 ate 8 faca
      escreval (v1[i])
   fimpara
   escreval (" ")
   escreval ("ordem inversa: ")
   escreval (" ")
   para j de 1 ate 8 faca
      escreval (v2[j])
   fimpara




Fimalgoritmo