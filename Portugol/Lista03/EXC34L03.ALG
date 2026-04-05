Algoritmo "EXC34L03"
//
//
// Descri��o   : Solicite um n�mero inteiro e converta-o em string, depois apresente seus d�gitos ao contr�rio.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 05/09/2025
Var

   x, s, invert: caracter
   num, i: inteiro

Inicio

   i:= 0

   escreval ("Digite um n�mero inteiro")
   leia (num)

   x:= numpcarac(num)

   para i de compr(x) ate 1 passo -1 faca

      s := copia(x,i,1)

      invert:= invert + s

   fimpara

   escreva (invert)

Fimalgoritmo