Algoritmo "EXC29L01"
// 
//  
// Descri��o   : Solicite dois valores, calcule a soma entre eles e apresente o resto da divis�o por 3.
// Autor(a)    : Fellipe Miquel�o Schmidt
// Data atual  : 06/08/2025
Var
   valor_um, valor_dois: inteiro
   soma: real


Inicio

      Escreva ("Digite um valor: ")
      Leia (valor_um)
      Escreva ("Digite outro valor: ")
      Leia(valor_dois)
      
      soma <- (valor_um + valor_dois) %3
      
      Escreval ("O resto da divis�o da soma entre", valor_um, " e ", valor_dois, " �: ", soma)



Fimalgoritmo