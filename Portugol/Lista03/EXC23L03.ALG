Algoritmo "EXC23L03"
//
//
// Descri��o   : Solicite uma frase e substitua todas as letras 'a' por �@�.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var
   frase, s, novafrase: caracter
   i, verifasc: inteiro


Inicio

   escreval ("Digite uma frase:")
   leia (frase)

   para i de 1 ate compr(frase) faca

      s:= copia(frase,i,1)
      verifasc:= asc(s)

      se (verifasc = 65) ou (verifasc = 97) entao
         novafrase:= novafrase + carac(64)
      senao
         novafrase:= novafrase + s
      fimse
   fimpara

   escreval (novafrase)

Fimalgoritmo