Algoritmo "EXC32L03"
//
//
// Descri��o   : Solicite uma frase e exiba apenas as vogais que aparecem uma �nica vez.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var

   frase, caract: caractere
   i, ah, eh, ih, oh, uh: inteiro

Inicio

   escreval("Digite uma string para verficar apenas as vogais que aparecem uma vez ")
   leia (frase)

   ah := 0
   eh := 0
   ih:= 0
   oh := 0
   uh := 0

   para i de 1 ate compr(frase) faca

      caract := copia(frase,i,1)
      caract := minusc(caract)

      se (caract = "a")entao
         ah := ah+1
      senao
         se(caract = "e")entao
            eh := eh+1
         senao
            se(caract = "i")entao
               ih :=ih+1
            senao
               se(caract = "o")entao
                  oh :=oh+1
               senao
                  se (caract = "u") entao
                     uh:=uh+1
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimpara

   se (ah = 1)entao
      escreval (" 'a' aparece uma vez")
   fimse
   se(eh = 1)entao
      escreval (" 'e' aparece uma vez")
   fimse
   se(ih = 1)entao
      escreval (" 'i' aparece uma vez")
   fimse
   se(oh = 1)entao
      escreval (" 'o' aparece uma vez")
   fimse
   se(uh = 1)entao
      escreval (" 'u' aparece uma vez")
   fimse
   
   se (ah <> 1) e (eh <> 1) e (ih <> 1) e (oh <> 1) e (uh <> 1) entao
      escreval ("A frase n�o possui vogais, ou ent�o, todas se repetem")
   fimse

Fimalgoritmo