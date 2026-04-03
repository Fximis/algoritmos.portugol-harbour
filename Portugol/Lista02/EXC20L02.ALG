Algoritmo "EXC20L02"
//
//
// Descrição   : Solicitar o nome, idade, sexo e salário de 3 pessoas e informar se homens ganham mais, mulheres ganham mais ou se é impossível determinar com os dados coletados.
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 23/08/2025
Var

   i, idade, contM, contF: inteiro
   nome, sexo: caractere
   salario, somaM, somaF, mediaM, mediaF: real
inicio
   somaM <- 0
   somaF <- 0
   contM <- 0
   contF <- 0

   para i de 1 ate 3 faca
   
      escreval("Pessoa", i, ":")
      escreva("Nome: ")
      leia(nome)
      escreva("Idade: ")
      leia(idade)
      escreva("Sexo (M/F): ")
      leia(sexo)
      escreva("Salario: ")
      leia(salario)

      se (maiusc(sexo) = "M") entao
         somaM <- somaM + salario
         contM <- contM + 1
      senao
         se (maiusc(sexo) = "F") entao
            somaF <- somaF + salario
            contF <- contF + 1
         fimse
      fimse
      
      escreval("")
   fimpara

   se (contM > 0) e (contF > 0) entao
      mediaM <- somaM / contM
      mediaF <- somaF / contF

      se (mediaM > mediaF) entao
         escreval("Homens ganham mais (média M = ", mediaM:0:2, " | média F = ", mediaF:0:2, ")")
      senao
         se (mediaF > mediaM) entao
            escreval("Mulheres ganham mais (média F = ", mediaF:0:2, " | média M = ", mediaM:0:2, ")")
         senao
            escreval("Impossível determinar: médias iguais.")
         fimse
      fimse
   senao
      escreval("Impossível determinar com os dados: falta homem ou mulher na amostra.")
   fimse

Fimalgoritmo