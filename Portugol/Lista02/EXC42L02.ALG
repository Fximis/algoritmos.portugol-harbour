Algoritmo "EXC42L02"
// Descrição   : Gerar e apresentar 10 números randômicos entre 10 e 100. Apresente também a média dos números pares.
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 19/08/2025
Var
soma, quantidade, x, n: inteiro


Inicio

      soma <- 0
      quantidade <- 0

      para x de 1 ate 10 faca
           n <- randi (91) + 10
           escreval (x, "º numero: ", n)
           se (n%2=0) entao
              soma <- soma + n
              quantidade <- quantidade + 1
           fimse
      fimpara
      
      se (quantidade>0) entao
         escreval ("A media é",soma/quantidade)
      senao
           escreva ("Não há pares")
      fimse


Fimalgoritmo