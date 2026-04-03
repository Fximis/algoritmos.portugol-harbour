Algoritmo "EXC33L02"
//
//
// Descrição   : Solicitar os dados de 15 alunos (nome, nota1, nota2), validando notas entre 0 e 10. Calcular:
// Média da turma.
// Percentual de aprovados e reprovados (média mínima 6,0).
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 24/08/2025
Var
   i, aprovados, reprovados: inteiro
   somaMedias, nota1, nota2: real
   nome: caractere
   mediaAluno, mediaTurma, percAprovados, percReprovados: real



Inicio


   somaMedias <- 0
   aprovados <- 0
   reprovados <- 0

   para i de 1 ate 15 faca
      escreva ("Digite o nome do aluno ", i, ": ")
      leia (nome)

      // Validação da nota 1
      repita
         escreva ("Digite a nota 1 (0 a 10): ")
         leia (nota1)
      ate (nota1 >= 0) e (nota1 <= 10)

      // Validação da nota 2
      repita
         escreva ("Digite a nota 2 (0 a 10): ")
         leia (nota2)
      ate (nota2 >= 0) e (nota2 <= 10)

      // Calcula média do aluno
      mediaAluno <- (nota1 + nota2) / 2
      somaMedias <- somaMedias + mediaAluno

      se (mediaAluno >= 6) entao
         aprovados <- aprovados + 1
      senao
         reprovados <- reprovados + 1
      fimse
   fimpara

   // Média da turma
   mediaTurma <- somaMedias / 15

   // Percentuais
   percAprovados <- (aprovados * 100) / 15
   percReprovados <- (reprovados * 100) / 15

   // Resultados finais
   escreval ("Média da turma: ", mediaTurma)
   escreval ("Percentual de aprovados: ", percAprovados, "%")
   escreval ("Percentual de reprovados: ", percReprovados, "%")



Fimalgoritmo