Algoritmo "EXC04L02"
// 
//  
// Descrição   : Solicitar o nível de energia do personagem (0 a 100). Se for menor que 30, informar “Energia crítica”; se for entre 30 e 70, informar “Energia estável”; se for acima de 70, informar “Energia máxima”.
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 18/08/2025
Var

energia: inteiro


Inicio

      escreval ("======== VERIFICADOR DE ENERGIA ======== ")
      escreval (" ")
      
      escreval ("Qual o nível de energia do personagem? ")
      leia (energia)
      
      se (energia < 30) entao
         escreval ("Sua energia está crítica")
      senao
           se (energia <= 70) entao
              escreval ("sua energia está estável")
           senao
                escreval ("sua energia está máxima")
           fimse
      fimse

Fimalgoritmo
