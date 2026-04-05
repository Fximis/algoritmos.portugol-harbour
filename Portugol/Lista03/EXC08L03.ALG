Algoritmo "EXC08L03"
//
//
// Descri��o   : Solicite uma string (m�nimo 4 caracteres) e exiba, para cada caractere, seu valor ASCII.
// Autor(a)    : Fellipe Miquel�o Schmidt
// Data atual  : 26/08/2025
Var

   algo: caractere
   i: inteiro

Inicio

   enquanto (compr(algo) < 4) faca
      escreva ("Digite algo com no m�nimo 4 caracteres: ")
      leia (algo)
   fimenquanto

   para i de 1 ate compr(algo) faca

      escreval ("Caractere: ", copia(algo,i,1), " -- Valor ASCII: ", asc(copia(algo,i,1)))

   fimpara




Fimalgoritmo