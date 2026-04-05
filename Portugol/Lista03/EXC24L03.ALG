Algoritmo "EXC24L03"
//
//
// Descri��o   : Solicite uma string e informe se ela cont�m a letra 'Z'.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var
   frase, s : caracter
   i, verifasc: inteiro
   x: logico

Inicio

   x := falso

   escreval ("Digite uma frase:")
   leia (frase)

   para i de 1 ate compr(frase) faca

      s:= copia(frase,i,1)
      verifasc:= asc(s)

      se (verifasc = 90) ou (verifasc = 122) entao
         x:= verdadeiro
      fimse
   fimpara

   se x = verdadeiro entao
      escreva (frase," cont�m 'z'")
   senao
      escreval (frase, " n�o cont�m 'z'")
   fimse


Fimalgoritmo