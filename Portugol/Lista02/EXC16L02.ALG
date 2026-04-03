Algoritmo "EXC16L02"
// Solicitar dois nomes e apresentar qual vem primeiro em ordem alfabética.
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 19/08/2025
Var
   nome_um, nome_dois, n1, n2: caractere

inicio

   escreva ("digite um nome: ")
   leia (nome_um)
   escreva ("digite outro nome:")
   leia (nome_dois)

   //conversor (resolve o erro de maiusc x minusc)
   
   n1 <- maiusc(nome_um)
   n2 <- maiusc(nome_dois)

   //comparador
   Se (n1 < n2) entao
      escreva ("Em ordem alfabética,", nome_um, " vem primeiro")
   senao
      escreva ("Em ordem alfabética,", nome_dois, " vem primeiro")
   fimse

Fimalgoritmo