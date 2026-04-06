Algoritmo "EXC02L04B"
//
//
// Descri��o   : Ler um vetor com 21 elementos num�ricos, e apresentar ao usu�rio os elementos em ordem inversa ao da entrada.
// Autor(a)    : Fellipe Miquel�o Schmidt.
// Data atual  : 10/10/2025
Var
   n: vetor[1..21] de inteiro
   i: inteiro

Inicio

      para i de 1 ate 21 faca
           escreva ("digite o ", i,"� n�mero: ")
           leia (n[i])
      fimpara
      escreval("A ordem invertida dos n�meros fica:")
      para i de 21 ate 1 passo -1 faca
           escreva (n[i], " ")
      fimpara


Fimalgoritmo