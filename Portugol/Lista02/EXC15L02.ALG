Algoritmo "EXC15L02"
// Solicitar um número e informar se ele é PAR ou ÍMPAR.
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 19/08/2025
Var
   num: inteiro

inicio

   escreva ("Digite um número para saber se é par ou ímpar: ")
   leia (num)

   Se (num % 2 = 0) entao
      escreva ("O", num, " é par")
   senao
      escreva ("O", num, " é ímpar")
   fimse

Fimalgoritmo