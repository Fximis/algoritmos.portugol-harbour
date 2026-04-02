Algoritmo "EXC22L01"
// 
//  
// Descri��o   : Gere 3 valores aleat�rios e apresente-os em ordem inversa.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 06/08/2025
Var
numeroUm, numeroDois, numeroTres: inteiro


Inicio
      Escreval ("Gerador aleat�rio de 03 numeros de 0 a 100 em ordem inversa")
      Escreval (" ")
      
      numeroUm <- randi(100)
      numeroDois <- randi(100)
      numeroTres <- randi(100)


      Escreval ("Os n�meros aleat�rios gerados s�o: ", numeroUm, ",", numeroDois, " e ", numeroTres)
      Escreval (" ")
      Escreval ("Os n�meros aleat�rios em sua ordem inversa s�o: ", numeroTres, ",", numeroDois, " e ", numeroUm)

Fimalgoritmo