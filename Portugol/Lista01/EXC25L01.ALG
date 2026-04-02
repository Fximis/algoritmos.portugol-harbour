Algoritmo "EXC25L01"
// 
//  
// Descri��o   : Solicite tr�s valores e apresente a soma de: 46% do primeiro + 31% do segundo + 14% do terceiro.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 06/08/2025
Var
valor_um, valor_dois, valor_tres: inteiro
soma: real


Inicio
      Escreval ("Digite um valor: ")
      Leia (valor_um)
      
      Escreval ("Digite outro valor: ")
      Leia (valor_dois)
      
      Escreval ("Digite o terceiro valor: ")
      Leia (valor_tres)
      
      soma <- (valor_um * 0.46) + (valor_dois * 0.31) + (valor_tres * 0.14)
      

       Escreval("Os valores digitados foram: ", valor_um, ", ", valor_dois, " e ", valor_tres)
       Escreval("A soma de 46% de ", valor_um, ", 31% de ", valor_dois, " e 14% de ", valor_tres, " resulta em: ", soma)
Fimalgoritmo