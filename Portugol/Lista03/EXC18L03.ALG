Algoritmo "EXC18L03"
//
//
// Descri��o   : Gere uma sequ�ncia aleat�ria contendo: 4 vogais min�sculas, 2 vogais mai�sculas, 3 consoantes mai�sculas e 3 n�meros.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

   vMin, vMai, num, con, seq, seqrand: caractere
   posicao, i: inteiro


Inicio

   vMin := "aeiou"
   num := "0123456789"
   con := "BCDFGHJKLMNPQRSTVWXYZ"

   //4 Vogais min�sculas
   para i de 1 ate 4 faca
      posicao := randi(5) + 1
      seq := seq + (copia(vMin,posicao,1))
   fimpara
   
   //2 Vogais mai�sculas
   para i de 1 ate 2 faca
      posicao := randi(5) + 1
      seq := seq + maiusc(copia(vMin,posicao,1))
   fimpara
   
   //3 Consoantes mai�sculas
   para i de 1 ate 3 faca
      posicao := randi(21) + 1
      seq := seq + (copia(con,posicao,1))
   fimpara
   
   //3 Numeros
   para i de 1 ate 3 faca
      posicao := randi(10) + 1
      seq := seq + (copia(num,posicao,1))
   fimpara
   
   // Para conferir se seqrand esta com a sequencia de seq -> escreval (seq)  nessa posi��o

   // Gerar a sequencia aleat�ria da string, com os os caracteres que foram gerados acima, sem repetir
   para i de 1 ate compr(seq) faca
      posicao := randi(compr(seq))
      seqrand := seqrand + (copia(seq,posicao,1))
      // faz a exclus�o do caractere que foi selecionado (seq recebe at� uma posicao anterior e pega o resto da posterior)
      se (posicao > 1) entao
         seq := copia(seq, 1, posicao -1) + copia(seq, posicao +1, compr(seq)-posicao)
      senao
      //faz a exclus�o do primeiro caractere, caso seja selecionado
         seq := copia(seq, 2,compr(seq)-1)
      fimse
   fimpara

   escreva (seqrand)
Fimalgoritmo