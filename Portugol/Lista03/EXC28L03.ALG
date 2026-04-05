Algoritmo "EXC28L03"
//
//
// Descri��o   : Solicite duas strings e informe se s�o iguais considerando que mai�sculos s�o distintos de min�sculos
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

   string1, string2, s, y: caractere
   i: inteiro

Inicio

   escreval ("Verificador de igualdade")
   escreval (" ")
   escreva ("Digite uma string: ")
   leia (string1)
   escreva("Digite outra string: ")
   leia (string2)

   se (compr(string1) = compr(string2))entao
      escreval ("Possuem a mesma quantidade de caractere")
   senao
      escreval ("N�o s�o iguais, pois, n�o possuem a mesma quantidade de caracteres")
      interrompa
   fimse

   para i de 1 ate compr(string1) faca

      s := (copia(string1,i,1))
      y := (copia(string2,i,1))

      se (s <> y) entao
         escreval ("As strings s�o diferentes ", s, " e ", y, " n�o possuem o mesmo valor")
         interrompa
      fimse
      se (s=y) entao
         escreval (s, " ", y, " s�o caracteres iguais")
      fimse
   fimpara


//Fazer tamb�m com se asc >= 97 e <= 122 ////(65-90)//// entao asc := -32/+32 (transformando em maiusc/minusc --> a <> � que o valor na exibi��o vai aparecer o original A ou a.

Fimalgoritmo