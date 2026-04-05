Algoritmo "EXC16L03"
//
//
// Descri��o   : Solicite uma frase e exiba o caractere de maior valor ASCII.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

   frase, x, letra: caractere
   i, maiorcarac, caracASC : inteiro

Inicio

   escreva("Digite uma frase: ")
   leia(frase)

   para i de 1 ate compr(frase) passo 1 faca
      x := (copia(frase,i,1))
      caracASC := (asc(x))
      se (caracASC > maiorcarac) entao
         maiorcarac := caracASC
         letra := x
      fimse
   fimpara

   escreval ("O maior valor ASCII �: ",maiorcarac, " correspondente � letra: ", letra)



Fimalgoritmo