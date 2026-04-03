Algoritmo "EXC34L02"
//
//
// Descrição   : Solicitar o nome completo e a idade de 5 pessoas. Ao final, apresentar o nome da pessoa mais velha e da
// mais jovem.
// Percentual de aprovados e reprovados (média mínima 6,0).
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 24/08/2025
Var

   i, idade, maior_idade, menor_idade: inteiro
   nome, nome_maior, nome_menor: caractere



Inicio

   nome_maior <- nome
   nome_menor <- nome
   maior_idade <- 0
   menor_idade <- 9999

   para i de 1 ate 5 passo 1 faca

      repita
         escreva ("Digite o nome completo da ", i, "ª pessoa: ")
         leia (nome)
      ate (nome <> "")

      repita
         escreva ("Digite a idade: ")
         leia (idade)
      ate (idade > 0)

      se (idade > maior_idade) entao
         maior_idade <- idade
         nome_maior <- nome
      fimse
      
      se  (idade < menor_idade)entao
            menor_idade <- idade
            nome_menor <- nome
      fimse

   fimpara

   escreval ("A pessoa mais velha foi: ", nome_maior, "com ", maior_idade, " anos")
   escreval ("A pessoa mais nova foi: ", nome_menor, "com ", menor_idade, " anos")


Fimalgoritmo