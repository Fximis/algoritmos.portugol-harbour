Algoritmo "EXC11L04B"
//
//

// Autor(a)    : Fellipe Miquel�o Schmidt. 
// Data atual  : 10/10/2025

Var
   vn, vs: vetor[1..10] de caractere
   vi: vetor[1..10] de inteiro
   i, jovem, totH, totI: inteiro
   nome: caractere
   media: real
   
inicio
   jovem := 200
   media := 0
   totH:= 0

   para i de 1 ate 10 faca
      escreva ("Digite seu nome: ")
      leia (vn[i])
      escreva ("Digite sua idade: ")
      leia (vi[i])
      escreva ("Digite seu sexo H/M: ")
      leia (vs[i])
      vs[i] := maiusc (vs[i])
      se (vi[i] < jovem) entao
         jovem := (vi[i])
         nome := (vn[i])
      fimse
      se (vs[i] = "H") entao
         totH := totH + 1
         totI := totI + (vi[i])
      fimse

   fimpara
   
   escreval ("A pessoa mais jovem foi", nome, "com idade de ", jovem, " anos")

   se (totH > 0) entao
   media := totI / totH
      escreval ("A m�dia de idade dos homens foi de", media)
   senao
      escreval ("N�o houveram homens para fazer uma m�dia de idade")
   fimse

Fimalgoritmo