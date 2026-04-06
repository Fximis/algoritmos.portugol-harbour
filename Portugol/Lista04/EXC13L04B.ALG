Algoritmo "EXC13L04B"
//
//

// Autor(a)    : Fellipe Miquel�o Schmidt.
// Data atual  : 10/10/2025

Var
   v1: vetor[1..6] de caractere
   v2: vetor [1..6] de inteiro
   tot,i: inteiro
   media: real
inicio

   para i de 1 ate 6 faca
        escreval ("digite o", i, "� nome")
        leia (v1[i])
        v2[i] := compr(v1[i])
        tot := tot + v2[i]
   fimpara
   limpatela
   media := tot/6
   para i de 1 ate 6 faca
        escreval ("A quantidade de elementos digitados na", i, "� vez, foi: ", v2[i])
   fimpara

   escreval ("A media dos elementos digitados foi de : ", media)


Fimalgoritmo