Algoritmo "EXC21L03"
//
//
// Descri��o   : Solicite um nome completo e apresente apenas o �ltimo sobrenome.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var
   nome, s, ultimoNome: caractere
   i, nomeasc: inteiro

Inicio

   escreva("Digite seu nome completo: ")
   leia(nome)

   para i de 1 ate compr(nome) faca
      s := copia(nome,i,1)
      nomeasc := asc(s)
      
      se (nomeasc = 32) entao
         ultimoNome := " "
      fimse
      
      ultimoNome := ultimoNome + s

   fimpara

   escreval (" ")
   escreva ("Seu �ltimo nome �: ",ultimoNome)
Fimalgoritmo