Algoritmo "EXC33L03"
//
//
// Descri��o   : Solicite um texto e remova todos os caracteres num�ricos.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

   frase,caract, nvfrase: caracter
   i, verif: inteiro

Inicio

   escreval ("Digite uma frase com n�meros")
   leia (frase)

   para i de 1 ate compr(frase) passo 1 faca

      caract := copia(frase,i,1)
      verif := asc(caract)

      se (verif < 48) ou (verif > 57) entao
         nvfrase := nvfrase + caract
      fimse
   fimpara
   escreval ("Nova frase sem n�meros: ", nvfrase)

Fimalgoritmo