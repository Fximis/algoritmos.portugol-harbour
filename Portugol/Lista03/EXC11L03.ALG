Algoritmo "EXC11L03"
//
//
// Descri��o   : Solicite um n�mero no formato string e verifique se cont�m apenas d�gitos num�ricos.
// Autor(a)    : Fellipe Miquel�o Schmidt 
Var

   numero, verificador : caractere
   i, x: inteiro

Inicio


   escreval("Digite um n�mero em formato de string: ")
   leia (numero)

   x := compr(numero)

   para i de 1 ate compr(numero) faca
      verificador := copia(numero,i,1)

      se (asc(verificador) >= 048) e (asc(verificador)<= 057) entao
         escreval (verificador, " � um n�mero ")
      senao
         escreval (verificador, " n�o � um n�mero")
      fimse
   fimpara



Fimalgoritmo