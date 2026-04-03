Algoritmo "EXC28L02"
//
//
// Descrição   : Solicitar 15 números (entre 10 e 50) e apresentar a média
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 23/08/2025
Var

   i, numero, somador: inteiro

inicio

   escreval ("Digite números entre 10 e 50")

   para i de 1 ate 15 passo 1 faca
      repita
         escreva (i, "º número:")
         leia (numero)
      ate ((numero >= 10) e (numero <= 50))

      somador <- somador + numero

   fimpara

   escreva ("A soma é", somador, " sendo a média: ", somador/15)

fimalgoritmo