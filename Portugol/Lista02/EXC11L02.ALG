Algoritmo "EXC11L02"
// Descrição   : Considerando que a nota mínima de aprovação é 6,0 e a frequência mínima é 75%, solicitar:
// Duas notas e calcular a média.
// A carga horária total da disciplina (em número de aulas).
// A quantidade de presenças do aluno (em número de aulas).
// Informar se o aluno está APROVADO ou REPROVADO.
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 19/08/2025
Var
   nota_um, nota_dois, cargaH: real
   freqAluno: inteiro

inicio

   //Levantamento de requisitos

   escreval ("=============APROVAÇÃO=============")
   escreval (" ")
   escreval ("Digite a primeira nota: ")
   leia (nota_um)
   escreval ("Digite a segunda nota: ")
   leia (nota_dois)

   escreval ("Qual a carga horária total da disciplica (número de aulas)")
   leia (cargaH)
   escreval ("Qual a quantidade de presenças do aluno? (em numero de aulas)")
   leia (freqAluno)

   //Calculos para aprovação

   cargaH <- cargaH * 0.75

   se ((nota_um + nota_dois) / 2 >= 6) e (freqAluno >= cargaH) entao
      escreval ("APROVADO")
   senao
      escreval ("REPROVADO")
   fimse

Fimalgoritmo