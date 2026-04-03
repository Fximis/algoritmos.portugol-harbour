Algoritmo "EXC09L02"
// Descrição   : Solicitar 3 números distintos e apresentar o maior.
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 19/08/2025
Var
   valor_um, valor_dois, valor_tres: inteiro

Inicio

   escreval ("Digite um valor: ")
   leia (valor_um)
   escreval ("Digite o segundo valor: ")
   leia (valor_dois)
   escreval ("digite o terceiro valor: ")
   leia (valor_tres)

   Se (valor_um > valor_dois) e (valor_um > valor_tres) entao
      escreva ("O maior valor é ", valor_um)
   senao
      Se (valor_dois > valor_um) e (valor_dois > valor_tres) entao
         escreva ("O maior valor é ", valor_dois)
      senao
         escreva ("O maior valor é ", valor_tres)
      fimse
   fimse




Fimalgoritmo