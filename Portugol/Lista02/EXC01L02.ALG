Algoritmo "EXC01L02"
// 
//  
// Descri��o   : Solicitar o nickname e a idade de um jogador. Informar se ele pode participar de um campeonato que exige idade m�nima de 16 anos.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 18/08/2025
Var

nome: caractere
idade: inteiro


Inicio

      escreva ("Digite o seu nome: ")
      leia (nome)
      
      escreva ("Sua idade: ")
      leia (idade)
      
      se (idade >= 16) entao
         escreva ("Voc� pode participar do campeonato")
         senao
         escreva ("Voc� nao tem idade m�nima de 16 anos para participar do campeonato")
      fimse

Fimalgoritmo