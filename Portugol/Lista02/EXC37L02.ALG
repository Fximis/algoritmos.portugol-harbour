Algoritmo "EXC37L02"
//
//
// Descrição   : Solicitar um número inteiro e apresentar se o mesmo é ou não um número primo.
// Percentual de aprovados e reprovados (média mínima 6,0).
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 24/08/2025

Var
   dia, mes: inteiro
   signo, opcao: caractere

Inicio

   repita
      escreva("Digite o dia do nascimento: ")
      leia(dia)

      escreva("Digite o mês do nascimento (1 a 12): ")
      leia(mes)

      se ( (dia >= 21) e (mes = 3)) ou ((dia <= 20 e mes = 4)) ) entao
         signo <- "Áries"
      senao se ( (dia >= 21 e mes = 4) ou (dia <= 20 e mes = 5) ) entao
         signo <- "Touro"
      senao se ( (dia >= 21 e mes = 5) ou (dia <= 20 e mes = 6) ) entao
         signo <- "Gêmeos"
      senao se ( (dia >= 21 e mes = 6) ou (dia <= 22 e mes = 7) ) entao
         signo <- "Câncer"
      senao se ( (dia >= 23 e mes = 7) ou (dia <= 22 e mes = 8) ) entao
         signo <- "Leão"
      senao se ( (dia >= 23 e mes = 8) ou (dia <= 22 e mes = 9) ) entao
         signo <- "Virgem"
      senao se ( (dia >= 23 e mes = 9) ou (dia <= 22 e mes = 10) ) entao
         signo <- "Libra"
      senao se ( (dia >= 23 e mes = 10) ou (dia <= 21 e mes = 11) ) entao
         signo <- "Escorpião"
      senao se ( (dia >= 22 e mes = 11) ou (dia <= 21 e mes = 12) ) entao
         signo <- "Sagitário"
      senao se ( (dia >= 22 e mes = 12) ou (dia <= 20 e mes = 1) ) entao
         signo <- "Capricórnio"
      senao se ( (dia >= 21 e mes = 1) ou (dia <= 18 e mes = 2) ) entao
         signo <- "Aquário"
      senao se ( (dia >= 19 e mes = 2) ou (dia <= 20 e mes = 3) ) entao
         signo <- "Peixes"
      fimse

      escreval("Seu signo é: ", signo)

      escreva("Deseja continuar? (S/N): ")
      leia(opcao)

   ate (opcao = "N") ou (opcao = "n")

FimAlgoritmo