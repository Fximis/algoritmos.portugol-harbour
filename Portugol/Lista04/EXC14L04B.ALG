Algoritmo "EXC14L04B"
//
//

// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 10/10/2025

Var
   v1, vresto: vetor[1..15] de inteiro
   vaux: vetor[1..75] de logico
   v2: vetor [1..15] de caractere
   i, sort : inteiro
inicio

   para i de 1 ate 15 faca
      vaux[i] := falso
   fimpara

   para i de 1 ate 15 faca

      repita
         sort := randi(70) + 5
      ate (vaux[sort]) = falso

      vaux[sort] := verdadeiro

      v1[i] := sort
   fimpara

   para i de 1 ate 15 faca
      vresto[i] := v1[i] % 2
      se (vresto[i] = 0) entao
         v2[i] := ("par")
      senao
         v2[i] := ("�mpar")
      fimse
   fimpara
   
   para i de 1 ate 15 faca
      escreval (v1[i]," � ", v2[i])
   fimpara



Fimalgoritmo