Algoritmo "Ex10CalculoVolumeEsfera"
// 
//  
// Descri��o   : Calcule e apresente o volume de uma esfera: Volume = (4/3) * 3,1416 * R�
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 05/08/2025
Var
raio, volume: real


Inicio
      Escreva ("Digite o valor do raio da esfera (cm) do prisma: ")
      leia (raio)
      
      volume <- (4/3) * 3.1416 * raio^3
      
      Escreva ("O volume da esfera � de ", volume:4:2, "cm�")


Fimalgoritmo