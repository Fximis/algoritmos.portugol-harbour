Algoritmo "EXC30L01"
// 
//  
// Descri��o   : Solicite o nome, idade, cidade e sal�rio. Apresente todos os dados com o sal�rio reajustado em 9,45%.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 06/08/2025
Var
   nome, cidade: caractere
   idade: inteiro
   salario, aumento: real


Inicio

      Escreva ("Digite o seu nome: ")
      leia (nome)
      Escreva ("Sua idade: ")
      leia (idade)
      Escreva ("Sua cidade: ")
      leia (cidade)
      Escreva ("Seu sal�rio: R$")
      leia (salario)
      
      aumento <- salario * 1.0945
      
      Escreval (nome, " com ", idade, " anos, ", " residente e domiciliado em ", cidade, " seu salario reajustado em 9,45% passa a ser: R$", aumento)
      


Fimalgoritmo