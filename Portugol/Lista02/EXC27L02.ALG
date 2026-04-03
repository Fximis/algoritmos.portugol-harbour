Algoritmo "EXC27L02"
//
//
// Descrição   : Solicitar o nome, idade e sexo de uma pessoa, validando: sexo entre (“F” / “M”) e idade entre 10 e 100 anos.
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 23/08/2025
Var

   nome: caractere
   idade: inteiro
   sexo: caractere



inicio

   repita
      escreva ("Digite o seu nome: ")
      leia (nome)
   ate (nome <> " ")

   repita
      escreva ("Digite a sua idade: ")
      leia (idade)
   ate (idade >= 10) e (idade <= 100)
   
   repita
         escreva ("Digite o seu sexo (M/F): ")
         leia (sexo)
         sexo <- (maiusc(sexo))
   ate ((sexo = "M") ou (sexo = "F"))
   
   escreva(nome,", ", idade, " anos, ",sexo)
         




fimalgoritmo