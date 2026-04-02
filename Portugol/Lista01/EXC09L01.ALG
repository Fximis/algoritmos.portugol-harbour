Algoritmo "Ex09CalculoVolumePrisma"
// 
//  
// Descri��o   : Calcule e apresente o volume de um prisma: Volume = L1 * L2 * L3
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 05/08/2025
Var
ladoum, ladodois, altura, volume: real


Inicio
      Escreva ("Digite o valor do primeiro lado (cm) do prisma: ")
      leia (ladoum)
      
      Escreva ("Digite o valor do segundo lado (cm) do prisma: ")
      leia (ladodois)
      
      Escreva ("Digite o valor da altura do prisma (cm): ")
      leia (altura)
      
      volume <- ladoum *ladodois * altura
      
      Escreva ("O volume do prisma � de ", volume:4:2, "cm�")


Fimalgoritmo