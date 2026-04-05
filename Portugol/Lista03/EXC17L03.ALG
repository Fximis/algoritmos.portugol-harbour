Algoritmo "EXC17L03"
//
//
// Descri��o   : Gere e exiba uma sequ�ncia aleat�ria de caracteres.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

gerar, i: inteiro
caracAleatorio: caracter


Inicio

      gerar := randi(100)+1


      para i de 1 ate gerar passo 1 faca
        caracAleatorio := (carac(randi(244)+1))
        escreva (caracAleatorio)
      fimpara

Fimalgoritmo