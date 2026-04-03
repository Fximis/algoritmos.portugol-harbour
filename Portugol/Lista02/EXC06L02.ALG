Algoritmo "EXC06L02"
// Descrição   : Solicitar dois valores distintos e informar qual é o maior.
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 19/08/2025
Var
valor_um, valor_dois: inteiro


Inicio

      escreva ("Digite um valor: ")
      leia(valor_um)
      escreva ("Digite outro valor: ")
      leia (valor_dois)
      
      Se (valor_um > valor_dois) entao
         escreval ("O maior valor é", valor_um)
      senao
           escreval ("O maior valor é", valor_dois)
      fimse


Fimalgoritmo