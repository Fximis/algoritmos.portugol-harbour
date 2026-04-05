Algoritmo "EXC19L03"
//
//
// Descri��o   : Apresente o valor ASCII de todas as letras (mai�sculas e min�sculas) e todos os n�meros.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

   valor: caracter
   tabela,i: inteiro

Inicio
   i := 0
   escreval ("Valor ASCII para letras mai�sculas: ")

   para i de 0 ate 25 passo 1 faca

      valor := (carac(65+i))
      tabela := asc(valor)

      escreval (valor, " - ",tabela)
   fimpara
   
   escreval (" ")
   
   i := 0
   escreval ("Valor ASCII para letras min�sculas: ")

   para i de 0 ate 25 passo 1 faca

      valor := (carac(97+i))
      tabela := asc(valor)

      escreval (valor, " - ",tabela)
   fimpara






Fimalgoritmo