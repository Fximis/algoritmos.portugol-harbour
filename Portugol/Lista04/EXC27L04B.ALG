Algoritmo "EXC27L04B"
//
//
// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 12/10/2025

Var

   v1,v2: vetor[1..8] de caractere
   m: vetor[1..8,1..2] de caractere
   i,l,c: inteiro


inicio

   para i de 1 ate 8 faca
      escreval ("Digite o ", i," � nome para V1")
      leia (v1[i])
      escreval ("Digite o ", i," � nome para V2")
      leia (v2[i])
   fimpara
   
   escreval (" ")

   para l de 1 ate 8 faca
      para c de 1 ate 2 faca
         m[l,1] := v1[l]
         m[l,2] := v2[l]
      fimpara
   fimpara

   para l de 1 ate 8 faca
      para c de 1 ate 2 faca
         escreva (m[l,c]:10)
      fimpara
      escreval()
   fimpara












Fimalgoritmo