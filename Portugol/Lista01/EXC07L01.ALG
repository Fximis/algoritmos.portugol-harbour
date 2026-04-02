Algoritmo "Ex07CalculoVolumecone"
// 
//  
// Descri��o   : Calcule e apresente o volume de um cone: Volume = (3,1416 * R� * H) / 3
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 05/08/2025
Var
altura, raio, volume: real


Inicio
      Escreva ("Digite o valor do raio (cm) do cone: ")
      leia (raio)
      
      Escreva ("Digite o valor da altura do cone (cm): ")
      leia (altura)
      
      volume <- (3.1416 * (raio ^ 2)*altura) / 3
      
      Escreva ("O volume do cone � de ", volume, "cm�")


Fimalgoritmo