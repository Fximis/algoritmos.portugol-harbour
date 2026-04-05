Algoritmo "EXC06L03"
//
//
// Descri��o   : Solicite uma string com m�nimo 5 e m�ximo 20 caracteres e exiba os 3 �ltimos caracteres.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

   palavra, string: caractere
   cont: inteiro

   
Inicio

   repita
      escreva ("Digite algo entre 5 e 20 caracteres: ")
      leia (palavra)
      cont := (compr(palavra))
   ate (cont >= 5) e (cont <= 20)
   
   string := copia(palavra,cont-4,5)

   escreva(string)






Fimalgoritmo