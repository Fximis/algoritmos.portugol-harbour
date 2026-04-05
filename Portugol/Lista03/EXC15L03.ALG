Algoritmo "EXC15L03"
//
//
// Descri��o   : Solicite uma palavra e informe se ela � ou n�o um pal�ndromo (ex.: "ANA", �REVIVER�).
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

   palavra,x,y,px,py: caractere
   i: inteiro

Inicio

   escreva("Digite uma palavra: ")
   leia(palavra)

   para i de 1 ate compr(palavra) passo 1 faca
      x := (copia(palavra,i,1))
      px := px+x
   fimpara

   para i de compr(palavra)ate 1 passo -1 faca
      y := (copia(palavra,i,1))
      py:=py+y
   fimpara

   se (px=py) entao
      escreval ("� um palindromo")
   senao
        escreval ("n�o � um pal�ndromo")
   fimse

Fimalgoritmo