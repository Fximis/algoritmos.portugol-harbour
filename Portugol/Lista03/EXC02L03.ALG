Algoritmo "EXC02L03"
//
//
// Descri��o   : Solicite uma string (palavra ou frase) e exiba a quantidade de caracteres que ela cont�m.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

   palavra, car: caractere
   contador: inteiro


Inicio


   repita
      escreva ("Digite uma palavra com m�n. de 5 caracteres: ")
      leia (palavra)
      contador := compr(palavra)
   ate (contador >= 5)




Fimalgoritmo