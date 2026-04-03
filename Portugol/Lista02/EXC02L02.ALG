Algoritmo "EXC02L02"
// 
//  
// Descrição   : Sobre um jogo, solicitar o número de moedas coletadas. Se for múltiplo de 50, informar que o jogador ganhou uma vida extra; caso contrário, informar quantas moedas faltam para ganhar a próxima vida.
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 18/08/2025
Var

moeda: real


Inicio

      escreva ("Quantas moedas foram coletadas? ")
      leia (moeda)
      
      se (moeda % 50 = 0) entao
         escreval ("======== PARABENS ========")
         escreval ("Por", moeda, " ser múltiplo de 50, você conseguiu uma vida extra")
         senao
         escreva ("Faltam", 50-(moeda % 50), " moedas para ganhar uma vida extra")
      fimse

Fimalgoritmo