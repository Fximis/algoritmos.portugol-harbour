Algoritmo "EXC14L03"
//
//
// Descri��o   : Solicite uma string sem espa�os e valide a informa��o, pedindo novamente se houver espa�o.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

   string: caractere
   i: inteiro
   valor: logico
Inicio


   
   repita
      escreval("Digite uma string sem espa�os: ")
      leia(string)
      
      valor := verdadeiro
      para i de 1 ate compr(string) passo 1 faca
         se (asc(copia(string,i,1))) = 32 entao
            valor := falso
         fimse
      fimpara
   ate valor := verdadeiro

Fimalgoritmo