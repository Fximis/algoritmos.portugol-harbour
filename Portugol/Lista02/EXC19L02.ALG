Algoritmo "EXC19L02"
// Solicitar os valores da pressão arterial de uma pessoa (com 18 anos ou mais) e apresentar a classificação
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 19/08/2025
Var

   idade, PAD, PAS: inteiro


inicio

   //verificador de usuário

   escreva ("Digite sua idade: ")
   Leia (idade)

   Se (idade < 18) entao
      escreval ("Este programa funciona apenas para maiores de 18 anos")
   senao
      escreval ("Digite sua Pressão Arterial")
      escreva ("Diastólica (PAD) em mmHg: ")
      leia (PAD)
      escreva ("Sistólica (PAS) em mmHG: ")
      leia (PAS)
   fimse


   //Classificação

   se (PAD < 85) e (PAS < 130) entao
      escreval ("Sua classificação é: NORMAL")
   senao
      se ((PAD >=85) e (PAD <=89)) e ((PAS >= 130) e (PAS <= 139)) entao
         escreval ("Sua classificação é: NORMAL LIMÍTROFE")
      senao
         se ((PAD >=90) e (PAD <=99)) e ((PAS >= 140) e (PAS <= 159)) entao
            escreval ("Sua classificação é: HIPERTENSÃO LEVE (ESTAGIO 1)")
         senao
            se ((PAD >=100) e (PAD <=109)) e ((PAS >= 160) e (PAS <= 179)) entao
               escreval ("Sua classificação é: HIPERTENSÃO MODERADA (ESTAGIO 2)")
            senao
               se (PAD >=110) e (PAS >= 180) entao
                  escreval ("Sua classificação é: HIPERTENSÃO GRAVE (ESTAGIO 3)")
               senao
                  se (PAD <90) e  (PAS >= 140) entao
                     escreval ("Sua classificação é: HIPERTENSÃO SISTÓLICA ISOLADA")
                  senao
                     escreval ("valores fora do padrão")
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse







Fimalgoritmo