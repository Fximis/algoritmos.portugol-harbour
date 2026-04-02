Algoritmo "exc17L01"
// 
//  
// Solicite o nome e a idade de 4 pessoas e calcule a m�dia das idades.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 06/08/2025
Var

nome, nomeDois, nomeTres, nomeQuatro: caractere
idade, idadeDois, idadeTres, idadeQuatro: inteiro
media: real

Inicio
      Escreva ("Digite o nome: ")
      Leia (nome)
      Escreva ("Digite a idade: ")
      Leia (idade)
      
      Escreva ("Digite o segundo nome: ")
      Leia (nomeDois)
      Escreva ("Digite a idade: ")
      Leia (idadeDois)
      
      Escreva ("Digite o terceiro nome: ")
      Leia (nomeTres)
      Escreva ("Digite a idade: ")
      Leia (idadeTres)
      
      Escreva ("Digite o quarto nome: ")
      Leia (nomeQuatro)
      Escreva ("Digite a idade: ")
      Leia (idadeQuatro)
      
      media <- (idade + idadeDois + idadeTres + idadeQuatro) /4
      
      Escreval ("Tendo em vista a idade de", nome, ", ", nomeDois, ", ", nomeTres, " e ", nomeQuatro, "a m�dia entre elas �", media)
      



Fimalgoritmo