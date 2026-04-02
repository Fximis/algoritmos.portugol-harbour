Algoritmo "EXC24L01"
// 
//  
// Descri��o   : Solicite dois valores e apresente a soma com acr�scimo de 18%.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 06/08/2025
Var
valor_um, valor_dois: inteiro
soma: real


Inicio
      Escreva ("Digite um valor: ")
      Leia (valor_um)
      
      Escreva ("Digite outro valor: ")
      Leia (valor_dois)
      
      soma <- ((valor_um + valor_dois) * 1.18)


      Escreval ("O valor digitado foi", valor_um, " e ", valor_dois, " sendo a soma + 18% destes valores:", soma)


Fimalgoritmo