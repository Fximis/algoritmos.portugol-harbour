Algoritmo "EXC26L01"
// 
//  
// Descri��o   : Solicite o nome e sal�rio de uma pessoa. Apresente o sal�rio reduzido em 12,6%.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 06/08/2025
Var

salario, reducao: real
nome: caractere

Inicio
      Escreval ("Digite o seu nome: ")
      Leia (nome)
      
      Escreval ("Digite seu sal�rio ")
      Leia (salario)
      
      reducao <- salario * 0.874
      

       Escreval(nome, "seu salario com redu��o de 12.6% passa a ser : R$", reducao)


       Fimalgoritmo