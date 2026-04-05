Algoritmo "EXC20L03"
//
//
// Descri��o   : Solicite um nome completo e apresente apenas a primeira palavra.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var
   nome, s, primeiroNome: caractere
   i, nomeasc, totalasc: inteiro

Inicio

   escreva("Digite seu nome completo: ")
   leia(nome)

   para i de 1 ate compr(nome) faca
      s := copia(nome,i,1)
      nomeasc := asc(s)
      primeiroNome := primeiroNome + s

      se (nomeasc = 32) entao
         escreval (" ")
         escreva ("Seu primeiro nome �: ", primeiroNome)
      fimse
   fimpara


Fimalgoritmo