Algoritmo "EXC12L03"
//
//
// Descri��o   : Solicite um n�mero inteiro entre 100 e 10000 e exiba apenas os dois primeiros d�gitos.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

   numero: caractere
   i: inteiro

Inicio

   repita
      escreva("Digite um n�mero inteiro entre 100 e 10000: ")
      leia(numero)
   ate (compr(numero) >=3) e (compr(numero) <= 5)
   

   para i de 1 ate 2 passo 1 faca
      escreval (copia(numero,i,1))
   fimpara

Fimalgoritmo