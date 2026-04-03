Algoritmo "EXC21L02"
//
//
// Descrição   : Solicitar o nome e o tipo sanguíneo de uma pessoa. Informar para quais tipos ela pode doar e de quais tipos pode receber.
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 23/08/2025
Var

   nome, tipo_Sang: caractere

inicio

   escreval ("Digite seu nome: ")
   leia (nome)

   escreval ("Digite seu tipo sanguíneo: ")
   leia (tipo_Sang)

   limpatela


   escolha (maiusc(tipo_Sang))
   
   caso "A+"

      escreval(nome, " pode doar para: A+ e AB+")
      escreval(nome, " pode receber de: A+, A-, O+ e O-")

   caso "A-"

      escreval(nome, " pode doar para: A+, A-, AB+ e AB-")
      escreval(nome, " pode receber de: A- e O-")

   caso "B+"

      escreval(nome, " pode doar para: B+ e AB+")
      escreval(nome, " pode receber de: B+, B-, O+ e O-")

   caso "B-"

      escreval(nome, " pode doar para: B+, B-, AB+ e AB-")
      escreval(nome, " pode receber de: B- e O-")

   caso "AB+"

      escreval(nome, " pode doar para: AB+")
      escreval(nome, " pode receber de: todos os tipos")

   caso "AB-"

      escreval(nome, " pode doar para: AB+ e AB-")
      escreval(nome, " pode receber de: A-, B-, AB- e O-")

   caso "O+"

      escreval(nome, " pode doar para: A+, B+, AB+ e O+")
      escreval(nome, " pode receber de: O+ e O-")

   caso "O-"

      escreval(nome, " pode doar para: todos os tipos")
      escreval(nome, " pode receber de: O-")

   outrocaso

      escreval("Tipo sanguíneo inválido!")

   fimescolha

fimalgoritmo