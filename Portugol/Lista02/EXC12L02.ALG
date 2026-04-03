Algoritmo "EXC12L02"
// Solicitar um número entre 10 e 45 e apresentar “Número válido” ou “Número inválido”.
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 19/08/2025
Var
   num: inteiro

inicio



   escreva ("Digite um número entre 10 e 45: ")
   leia (num)

   Se (num >= 10) e (num <=45)entao
      escreva ("Você digitou um valor válido!!")
   senao
      repita
            limpatela
            escreval ("Você digitou um valor inválido")
            escreval ("Digite um valor válido entre 10 e 45: ")
            leia (num)
      ate (num >=10) e (num <=45)
   fimse




Fimalgoritmo