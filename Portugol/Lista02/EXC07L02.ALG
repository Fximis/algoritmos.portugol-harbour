Algoritmo "EXC07L02"
// Descrição   : Solicitar dois valores e apresentar o maior e o menor. Caso sejam iguais, informar ao usuário.
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
           se (valor_um < valor_dois) entao
              escreval ("O maior valor é", valor_dois)
           senao
                escreval ("Os valores são iguais")
           fimse
      fimse


Fimalgoritmo