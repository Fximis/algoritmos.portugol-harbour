Algoritmo "EXC06L04B"
//
//
// Descri��o   : Fa�a um algoritmo que Leia um vetor (V1) de 10 elementos num�ricos e preencha um outro (V2) contendo em cada c�lula, o dobro de V1. Em seguida, preencha um terceiro vetor (V3) contendo em cada c�lula a metade de V1.
// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 10/10/2025

Var
   v1,v2: vetor[1..10] de inteiro
   v3: vetor[1..10] de real
   i: inteiro

funcao dobro(valor: inteiro):inteiro
retorne valor *2
fimfuncao

funcao metade(valor:inteiro):real
retorne valor /2
fimfuncao

//N�o consegui aplicar procedimento para mostrar
//a multiplica��o e divis�o (aparecia erro - VETOR depois de declarar em procedimento)

Inicio

   para i de 1 ate 10 faca
      escreval ("Digite o ", i, "� valor")
      leia (v1[i])
   fimpara

   para i de 1 ate 10 fa�a
      v2[i] := dobro(v1[i])
      v3[i] := metade (v1[i])
   fimpara

   limpatela
   escreval ("Os valores digitados foram: ")

   para i de 1 ate 10 faca
      escreva (v1[i], " ")
   fimpara
   escreval (" ")
   escreval (" ")
   escreval ("Os valores dobrados ficam: ")
   para i de 1 ate 10 faca
      escreva (v2[i], " ")
   fimpara
   escreval (" ")
   escreval (" ")
   escreval ("A metade dos valores digitados ficam: ")
   para i de 1 ate 10 faca
      escreva (v3[i], " ")
   fimpara

Fimalgoritmo