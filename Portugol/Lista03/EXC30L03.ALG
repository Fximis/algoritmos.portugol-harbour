Algoritmo "EXC30L03"
//
//
// Descri��o   : Solicite uma string e informe se ela n�o cont�m a letra 'Z'.
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
      //se (verifasc = 90) entao
         x:= verdadeiro
      fimse
   fimpara

   se x = falso entao
      escreval (frase, " n�o cont�m 'Z'")
   senao
      escreval (frase, " cont�m 'Z'")
   fimse


Fimalgoritmo