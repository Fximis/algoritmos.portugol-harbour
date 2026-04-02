Algoritmo "Ex08CalculoVolumePiramide"
// 
//  
// Descri��o   : Calcule e apresente o volume de uma pir�mide: Volume = (L * L) * (H / 3)
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 05/08/2025
Var
altura, largura, volume: real


Inicio
      Escreva ("Digite o valor da largura (cm) da pir�mide: ")
      leia (largura)
      
      Escreva ("Digite o valor da altura da pir�mide (cm): ")
      leia (altura)
      
      volume <- (largura^2) * (altura/3)
      
      Escreva ("O volume da pir�mide � de ", volume:4:2, "cm�")


Fimalgoritmo