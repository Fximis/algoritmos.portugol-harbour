Algoritmo "EXC29L03"
//
//
// Descri��o   : Solicite uma palavra e conte quantas letras 'A' ela possui.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

   algo, x: caractere
   i, y, cont: inteiro

Inicio



   escreval ("Verificador de quantidade de 'A'")
   escreval (" ")
   escreva ("Digite algo: ")
   leia (algo)

   cont := 0

   para i de 1 ate compr(algo) faca

      x := (copia(algo,i,1))
      y := asc(x)
      //Se for apenas maiusc = 65
      se (asc(x) = 65) ou (asc(x) = 97) entao
         cont := cont +1
      fimse
   fimpara

      escreval ("Em ", algo, " temos ", cont, " quantidades de 'A'")


Fimalgoritmo