Algoritmo "EXC03L04B"
//
//
// Descri��o   : Elaborar um algoritmo que solicite e armazene em um vetor, as idades de 7 pessoas. Posteriormente, apresente a M�dia das Idades.
// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 10/10/2025
Var
   n: vetor[1..7] de inteiro
   i, s: inteiro
   m: real

Inicio
      m := 0
      para i de 1 ate 7 faca
           escreval ("digite a", i,"� idade")
           leia (n[i])
           s := s + n[i]
      fimpara
      m := s/7
      escreval ("A m�dia de idade foi de: ", m:3:1)

Fimalgoritmo