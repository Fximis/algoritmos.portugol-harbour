Algoritmo "EXC18L02"
// Solicitar três nomes e apresentar qual vem primeiro em ordem alfabética.
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 19/08/2025
Var
   nome_um, nome_dois, nome_tres, n1, n2, n3: caractere
   primeiro, ultimo: caractere
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
   n3 <- maiusc(nome_tres)

   //Inicializador

   primeiro <- n1
   ultimo <- n1

   //Verificador menor

   se (n2 < maiusc(primeiro))entao
      primeiro <- nome_dois
   fimse

   se (n3 < maiusc(primeiro)) entao
      primeiro <- nome_tres
   fimse

   //Verificador maior
   
   se (n2 > maiusc(ultimo)) entao
      ultimo <- nome_dois
   fimse

   se (n3 > maiusc(ultimo)) entao
      ultimo <- nome_tres
   fimse

   escreval ("Em ordem alfabética, ", primeiro, " vem antes de ", ultimo)

Fimalgoritmo