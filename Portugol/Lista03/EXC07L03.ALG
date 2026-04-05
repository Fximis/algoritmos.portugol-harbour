Algoritmo "EXC07L03"
//
//
// Descri��o   : Solicite uma string e exiba cada caractere em uma linha separada.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

   algo: caractere
   algocarac, contador: inteiro


Inicio

   contador := 1

   escreva ("Digite algo: ")
   leia (algo)

   algocarac := compr(algo)

   Enquanto (contador <= algocarac) faca
   
      escreval (copia(algo,contador,1))

      contador := contador +1

   fimenquanto




Fimalgoritmo