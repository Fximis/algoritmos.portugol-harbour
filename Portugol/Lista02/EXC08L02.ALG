Algoritmo "EXC08L02"
// Descrição   : Solicitar o nome, idade e salário de uma pessoa. Calcular e apresentar o novo salário conforme os critérios: Idade até 35 anos ? aumento de 12% Idade entre 36 e 50 anos ? aumento de 14,5% Idade acima de 50 anos ? aumento de 17%
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 19/08/2025
Var
salario: real
nome: caractere
idade: inteiro

Inicio

      escreva ("Qual o seu nome? ")
      leia(nome)
      escreva ("Qual sua idade? ")
      leia (idade)
      escreva ("Qual o seu salário? ")
      leia (salario)
      
      se (idade <= 35) entao
         Escreval ("Seu salário reajustado é de R$ ", salario * 1.12)
      senao
           se (idade > 35) e (idade <= 50) entao
              Escreval ("Seu salário reajustado é de R$ ", salario * 1.145)
           senao
              Escreval ("Seu salário reajustado é de R$ ", salario * 1.17)
           fimse
      fimse
Fimalgoritmo