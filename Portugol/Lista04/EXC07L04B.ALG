Algoritmo "EXC07L04B"
//
//
// Descri��o   : Solicite ao usu�rio 5 n�meros inteiros, guarde-os em um vetor e em seguida
//apresente-os ao usu�rio. Finalmente, apresente tamb�m quantos elementos
//s�o negativos.
// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 10/10/2025

Var
   v: vetor[1..5] de inteiro
   i, cont: inteiro

Inicio
   cont := 0

   escreval ("Digite 05 n�meros inteiros")

   para i de 1 ate 5 faca
      leia (v[i])
   fimpara

   limpatela

   escreva ("os valores apresentados foram: ")
   cont := 0
   para i de 1 ate 5 faca
      escreva (v[i], " ")
      se (v[i]<0) entao
         cont := cont + 1
      fimse
   fimpara
   escreval (" ")
   se (cont>0) entao
      escreva ("houveram", cont, " numeros negativos")
   senao
      escreval ("N�o houveram valores negativos")
   fimse







Fimalgoritmo