Algoritmo "EXC16L04B"
//
//

// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 10/10/2025

Var
   v1,v2,v3:vetor[1..6] de inteiro
   i, contpar, contimpar: inteiro



inicio
   contpar:=0
   contimpar:=0


   escreval ("Digite 06 elementos inteiros maiores ou igual a zero: ")
   para i de 1 ate 6 faca
      leia (v1[i])

      se (v1[i] % 2 = 0) entao
         contpar:=contpar+1
         v3[contpar] := v1[i]
      senao
         contimpar:=contimpar+1
         v2[contimpar] := v1[i]
      fimse
   fimpara
   escreval (" ")


   escreva ("N�meros pares: ")
   para i de 1 ate contpar faca
      escreva (v3[i], ", ")
   fimpara

   escreval (" ")
   escreval (" ")
   
   escreva ("N�meros �mpares: ")
   para i de 1 ate contimpar faca
      escreva (v2[i], ", ")
   fimpara

Fimalgoritmo