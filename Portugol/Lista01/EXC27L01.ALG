Algoritmo "EXC27L01"
// 
//  
// Descri��o   : Solicite nome, idade, sexo (M, F ou O) e sal�rio de uma pessoa. Calcule e apresente apenas o valor do aumento.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 06/08/2025
Var

idade: inteiro
aumento, salario: real
nome, sexo: caractere

Inicio
      Escreval ("Digite o seu nome: ")
      Leia (nome)
      
      Escreval ("Digite sua idade: ")
      Leia (idade)
      
      Escreval ("Digite seu sexo (M, F, O): ")
      leia (sexo)
      
      Escreval ("Digite seu salario: ")
      Leia (salario)
      
      aumento <- salario * 1.245
      

      Escreval("O sal�rio com aumento de 24,5% passa a ser: R$", aumento)


       Fimalgoritmo