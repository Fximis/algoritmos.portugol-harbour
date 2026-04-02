Algoritmo "EXC01L04B"
//
//
// Descri��o   : Construir algoritmo que Leia um vetor de 10 elementos e posteriormente apresente a soma dos mesmos.
// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 10/10/2025
Var
   n: vetor [1..10] de inteiro
   i, s: inteiro

Inicio
   s := 0
   para i de 1 ate 10 faca
      escreval ("Digite o", i, "� valor")
      leia (n[i])
      s := s + n[i]
   fimpara
   escreval ("A soma dos valores resulta em", s)

Fimalgoritmo