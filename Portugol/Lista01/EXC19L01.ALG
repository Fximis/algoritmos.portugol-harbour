Algoritmo "exc19L01"
// 
//  
// Solicite o nome, idade, profiss�o e sal�rio de uma pessoa. Apresente os dados e o valor descontado do sal�rio com base em um plano de sa�de de 1,3%.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 06/08/2025
Var

nome, profissao: caractere

idade : inteiro

salario, salarioDescontado, desconto: real


Inicio

      Escreva ("Digite o seu nome: ")
      leia (nome)
      Escreva ("Digite a sua idade: ")
      Leia (idade)
      Escreva ("Digite sua profiss�o: ")
      Leia (profissao)
      Escreva ("Digite o seu sal�rio: ")
      Leia (salario)
      
      salarioDescontado <- salario * 0.987
      desconto <- salario - salarioDescontado
      
      Escreval (nome, ",", idade, " anos, ", profissao, " com salario de R$ ", salario, " descontando o plano de sa�de no valor de R$", desconto:6:2, " seu sal�rio passa a ser R$ ", salarioDescontado:6:2)
      
      



Fimalgoritmo