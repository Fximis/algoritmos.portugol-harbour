Algoritmo "EXC29L02"
//
//
// Descrição   : Apresentar todos os números pares entre 5 e 50, um ao lado do outro (utilizando REPITA...ATÉ).
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 23/08/2025
Var

   cont: real

inicio

   escreval ("== DEMONSTRADOR DE NÚMEROS PARES ENTRE 5 E 50 ==")
   escreva (" ")
   escreva(" ")

   cont <- 5

   repita

      se ((cont) % 2 = 0) entao
         escreva (cont)
      fimse

      cont <- cont + 1

   ate (cont > 50)




fimalgoritmo