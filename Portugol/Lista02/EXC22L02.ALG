Algoritmo "EXC22L02"
//
//
// Descrição   : Solicitar o nome e a idade de 3 pessoas (utilizando a estrutura REPITA...ATÉ).
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 23/08/2025
Var

   x, idade: inteiro
   nome: caractere


inicio

   x <- 1

   repita

      escreva ("Digite o nome da ", x, "ª pessoa: ")
      leia (nome)
      escreva ("Digite a idade da ", x, "ª pessoa: ")
      leia (idade)

      limpatela

      x <- x + 1

   ate (x >= 4)

fimalgoritmo