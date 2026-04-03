Algoritmo "EXC32L02"
//
//
// Descrição   : Solicitar o nome, idade e sexo (F/M) de várias pessoas. Após cada entrada, perguntar se deseja continuar. Quando encerrar, apresentar a média de idade das mulheres.
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 24/08/2025
Var
   idade, idadeM, contM: inteiro
   nome, sexo, x: caractere



Inicio

   idadeM <- 0
   contM <- 0

   enquanto (x <> "n") faca

      escreva ("Digite o nome: ")
      leia (nome)

      escreva ("Digite a idade: ")
      leia (idade)

      escreva ("Digite o sexo (F/M): ")
      leia (sexo)

      Se (sexo = "F") ou (sexo = "f") entao
         idadeM <- idadeM + idade
         contM <- contM + 1
      fimse

      escreva ("Deseja continuar? (S/N) ")
      leia (x)

   fimenquanto

   se (contM > 0) entao
      escreva ("A média da idade das mulheres é ", idadeM / contM)
   senao
      escreva ("Não foram cadastradas mulheres para calcular a média de idade.")
   fimse

Fimalgoritmo