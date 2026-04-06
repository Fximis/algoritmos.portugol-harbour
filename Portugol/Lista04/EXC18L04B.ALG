Algoritmo "EXC18L04B"
//
//

// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 10/10/2025

Var
   v1: vetor[1..10] de caractere
   i,mai,posi,cont: inteiro
   nomeMaior:caractere

inicio

   mai:=0
   cont:= 0

   para i de 1 ate 10 faca
      escreva ("Digite um nome: ")
      leia (v1[i])
      se (compr(v1[i]) > mai) entao
         nomeMaior := v1[i]
         mai := compr(v1[i])
         posi := i
      fimse
   fimpara
   escreval (" ")
   escreva ("Nome:",nomeMaior," posi��o:", posi," quantidade de letras: ", mai)





Fimalgoritmo