Algoritmo "EXC35L03"
//
//
// Descri��o   : Solicite uma frase (m�nimo 8 caracteres) e apresente se a mesma � ou n�o um pal�ndromo. Obs. Deve haver ao menos um espa�o na frase.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

   palavra,x,y,px,py: caractere
   i, verif, verifasc: inteiro

Inicio

   enquanto (compr(palavra) < 8) e (verifasc <> 32) faca

      escreva("Digite uma palavra: ")
      leia(palavra)

      x := (copia(palavra,i,1))
      verif := asc(x)

      se (verif = 32) entao
         verifasc := 32
      fimse

   fimenquanto

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