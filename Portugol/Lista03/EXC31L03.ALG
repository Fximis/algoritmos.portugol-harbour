Algoritmo "EXC31L03"
//
//
// Descri��o   : 31. Solicite e apresente a soma dos valores ASCII de cada caractere.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

   algo, x: caractere
   i, soma : inteiro

Inicio

   escreva("Digite algo para somar os valores ASCII: ")
   leia(algo)

   para i de 1 ate compr(algo) passo 1 faca

      x := (copia(algo,i,1))

      soma := soma + (asc(x))

   fimpara

   escreval ("O total ASC de ", algo, "  �: ", soma)

Fimalgoritmo