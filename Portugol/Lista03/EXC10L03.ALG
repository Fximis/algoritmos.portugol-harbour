Algoritmo "EXC10L03"
//
//
// Descri��o   : Solicite uma string e exiba a quantidade de vogais que ela possui.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

   string, caract: caractere
   i, contcarac: inteiro

Inicio

   escreval("Digite uma string para verficar a quantidade de vogais: ")
   leia (string)

   contcarac := 0

   para i de 1 ate compr(string) faca
      caract := copia(string,i,1)

      caract := minusc(caract)

      se (caract = "a") ou (caract = "e") ou (caract = "i") ou (caract = "o") ou (caract = "u") entao
         contcarac := contcarac + 1
         escreval (caract)
      fimse
   fimpara
          escreval ("O total de vogais foram: ", contcarac)


Fimalgoritmo