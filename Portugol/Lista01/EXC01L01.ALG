Algoritmo "Ex01NomeSalario"
// 
//  
// Descri��o   : Solicite o nome e o sal�rio de uma pessoa. Calcule e apresente o novo sal�rio com um aumento de 28,5%
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 05/08/2025
Var
   nome: caractere
   salario, salarioAumentado: real


Inicio

      Escreval ("Digite o seu nome: ")
      Leia (nome)
      Escreval ("Digite o valor do seu sal�rio (reais): ")
      Leia (salario)
      salarioAumentado <- salario + salario * 0.285
      Escreval (nome, ", o seu sal�rio � de R$ ",salario, " com o acr�scimo de 28,5% passa a ser R$:",salarioAumentado:4:2)


Fimalgoritmo