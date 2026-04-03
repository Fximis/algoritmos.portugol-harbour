Algoritmo "EXC31L02"
//
//
// Descrição   : Solicitar 10 números. A cada número, informar se é PAR ou ÍMPAR e, ao final, apresentar a média dos números ímpares.
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 24/08/2025
Var
   i,num, soma_impar: inteiro


Inicio

soma_impar <- 0

   para i de 1 ate 10 passo 1 faca

      escreva ("Digite o número", i, ": ")
      leia (num)

      Se (num % 2 = 0) entao
         escreval (num, " é par")
         escreval (" ")
      senao
         escreval (num, " é impar")
         escreval (" ")
         soma_impar <- soma_impar + num
      fimse
   fimpara

    escreva ("A soma total dos ímpares é", soma_impar)

Fimalgoritmo