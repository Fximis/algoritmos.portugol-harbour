Algoritmo "EXC10L02"
// Descrição   : Solicitar 3 números distintos e apresentar o maior e o menor.
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 19/08/2025
Var
  maior, menor, valor_um, valor_dois, valor_tres: inteiro

Inicio

   escreval ("Digite um valor: ")
   leia (valor_um)
   escreval ("Digite o segundo valor: ")
   leia (valor_dois)
   escreval ("digite o terceiro valor: ")
   leia (valor_tres)

   maior <- valor_um
   se (valor_dois > maior) entao
      maior <- valor_dois
   fimse
   se (valor_tres > maior) entao
      maior <- valor_tres
   fimse
   
   menor <- valor_um
   se (valor_dois < menor) entao
      menor <- valor_dois
   fimse
   se (valor_tres < menor) entao
      menor <- valor_tres
   fimse
   
   escreval ("O maior valor é", maior)
   escreval ("O menor valor é", menor)
   




Fimalgoritmo