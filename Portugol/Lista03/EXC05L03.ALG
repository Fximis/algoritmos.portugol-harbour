Algoritmo "EXC05L03"
//
//
// Descri��o   : 5. Solicite uma string com no m�nimo 8 caracteres e apresente apenas os 5 primeiros caracteres.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

   palavra, string: caractere
   cont: inteiro
   
Inicio

   repita
      escreva ("Digite algo com no m�nimo 8 caracteres: ")
      leia (palavra)
      cont := (compr(palavra))
   ate (cont >= 8)
   
   string := copia(palavra,1,5)

   escreva(string)






Fimalgoritmo