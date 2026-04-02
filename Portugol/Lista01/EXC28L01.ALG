Algoritmo "EXC28L01"
// 
//  
// Descri��o   : Solicite dois valores e calcule: Soma dos dois, com desconto de 58%.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 06/08/2025
Var
   valor_um, valor_dois: inteiro
   desconto, valor_final, valor_desconto: real


Inicio

      Escreval ("Digite dois valores que queira somar e descontar 58% ")
      Leia (valor_um)
      Leia (valor_dois)
      
      valor_final <- (valor_um + valor_dois)* 42/100
      valor_desconto <- (valor_um + valor_dois) - valor_final
      
      Escreval("somando", valor_um, " e ", valor_dois, " descontando 58%, temos o valor:", valor_final)
      Escreval ("O desconto foi de:", valor_desconto)


       Fimalgoritmo