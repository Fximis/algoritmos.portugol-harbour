Algoritmo "EXC09L03"
//
//
// Descri��o   : Solicite uma string e exiba apenas as vogais, uma por linha.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

   string, caract: caractere
   i: inteiro

Inicio

   escreval("Digite uma string para verficar apenas as vogais")
   leia (string)

   para i de 1 ate compr(string) faca
      caract := copia(string,i,1)

      caract := minusc(caract)

      se (caract = "a") ou (caract = "e") ou (caract = "i") ou (caract = "o") ou (caract = "u") entao
         escreval (caract)
      fimse
   fimpara


Fimalgoritmo