Algoritmo "EXC17L02"
// Solicitar três nomes e apresentar qual vem primeiro em ordem alfabética.
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 19/08/2025
Var
   nome_um, nome_dois, nome_tres, n1, n2, n3: caractere

inicio

   escreva ("Digite um nome: ")
   leia (nome_um)
   escreva ("Digite outro nome: ")
   leia (nome_dois)
   escreva("Digite o terceiro nome: ")
   leia (nome_tres)

   //conversor (resolve o erro de maiusc x minusc)
   
   n1 <- maiusc(nome_um)
   n2 <- maiusc(nome_dois)
   n3 <- maiusc (nome_tres)

   //comparador
   Se (n1 < n2) e (n1 < n3) entao
      escreva ("Em ordem alfabética,", nome_um, " vem primeiro")
   senao
      se (n2 < n1) e (n2 <n3) entao
         escreva ("Em ordem alfabética,", nome_dois, " vem primeiro")

   senao
        escreva ("Em ordem alfabética,", nome_tres, " vem primeiro")
        fimse
   fimse

Fimalgoritmo