Algoritmo "Ex06CalculoVolumeCilindro"
// 
//  
// Descri��o   : Calcule e apresente o volume de um cilindro: Volume = 3,1416 * R� * H
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 05/08/2025
Var
altura, raio, volume: real


Inicio
      Escreva ("Digite o valor do raio (cm) do cilindro: ")
      leia (raio)
      
      Escreva ("Digite o valor da altura do cilindro (cm): ")
      leia (altura)
      
      volume <- 3.1416 * (raio ^ 2) * altura
      
      Escreva ("O volume do cilindro � de ", volume, "cm�")


Fimalgoritmo