Algoritmo "EXC20L01"
// 
//  
// Descri��o   : Solicite 5 n�meros e calcule a m�dia ponderada, com pesos: 2, 4, 2, 5 e 3.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 06/08/2025
Var
numeroUm, numeroDois, numeroTres, numeroQuatro, numeroCinco, mediaPonderada: real


Inicio
      Escreva ("Digite 5 n�meros para calcular a m�dia ponderada: ")
      Leia (numeroUm)
      Leia (numeroDois)
      Leia(numeroTres)
      Leia (numeroQuatro)
      Leia  (numeroCinco)
               
      mediaPonderada <- (numeroUm * 2 + numeroDois * 4 + numeroTres * 2 + numeroQuatro * 5 + numeroCinco * 3)/ 2 + 4 + 2 + 5 + 3
      
      Escreval ("A m�dia ponderada � de", mediaPonderada)


Fimalgoritmo