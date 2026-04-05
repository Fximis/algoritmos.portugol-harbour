Algoritmo "EXC36L03"
//
//
// Descri��o   : Solicite um n�mero inteiro e some-o com sua vers�o invertida repetidamente at� que o resultado seja um n�mero capicua (pal�ndromo num�rico). Ao final, apresente o resultado e a quantidade de somas realizadas.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var



   numeroStr, numeroStrInvertido, tempStr: caracter
   numero, soma, i, j: inteiro
   somasRealizadas: inteiro
   ehCapicua: logico

Inicio

   escreval("Digite um n�mero inteiro:")
   leia(numero)
   numeroStr := numpcarac(numero)

   somasRealizadas := 0


   repita


      numeroStrInvertido := ""


      para i de compr(numeroStr) ate 1 passo -1 faca
         numeroStrInvertido := numeroStrInvertido + copia(numeroStr, i, 1)
      fimpara


      numero := caracpnum(numeroStr)
      soma := numero + caracpnum(numeroStrInvertido)


      numeroStr := numpcarac(soma)
      somasRealizadas := somasRealizadas + 1


      tempStr := ""
      para j de compr(numeroStr) ate 1 passo -1 faca
         tempStr := tempStr + copia(numeroStr, j, 1)
      fimpara

      se (numeroStr = tempStr) entao
         ehCapicua := verdadeiro
      senao
         ehCapicua := falso
      fimse

   ate (ehCapicua)


   escreval("O resultado capicua �:", soma)
   escreval("A quantidade de somas realizadas foi:", somasRealizadas)

Fimalgoritmo