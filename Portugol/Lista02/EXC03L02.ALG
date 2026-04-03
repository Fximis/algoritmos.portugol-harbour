Algoritmo "EXC03L02"
// 
//  
// Descrição   : Sobre um jogo, solicitar o número de moedas coletadas. Se for múltiplo de 50, informar que o jogador ganhou vida extra; caso contrário, informar quantas moedas faltam para ganhar a próxima vida.
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 18/08/2025
Var

moedas: inteiro


Inicio

     escreva("Quantas moedas você coletou? ")
   leia(moedas)

   se (moedas % 50 = 0) entao
      escreva("Parabéns! Você ganhou uma vida extra!")
   senão

      escreva("Faltam ", 50 - (moedas % 50), " moedas para ganhar a próxima vida.")
   fimse


Fimalgoritmo
