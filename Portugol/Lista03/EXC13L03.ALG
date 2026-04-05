Algoritmo "EXC13L03"
//
//
// Descri��o   : Solicite uma string e exiba-a invertida (ex.: "CASA" ? "ASAC").
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

   string: caractere
   i: inteiro

Inicio


      escreva("Digite uma string: ")
      leia(string)

   

   para i de compr(string) ate 1 passo -1 faca
      escreval (copia(string,i,1))
   fimpara

Fimalgoritmo