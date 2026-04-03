clear

/*Sexo (c/1)
(F) --> Idade (n/3) --> mostrar " maior que 21"
(M) --> peso (n/5/2) --> mostrar maior que 100kg   */

cSexo := space(1)

@ 01,01 to 07,50

@ 02,02 say "Qual o seu sexo?(M/F)"

@ 02,25 get cSexo  picture '@!' valid cSexo $ 'MF'
read

if cSexo  = "M"

   nPeso := 0

   @ 03,02 say "Qual o seu peso?"

   @ 03,20 get nPeso picture '999.99' valid nPeso > 0
   read

   if nPeso > 100

      @ 04,02 say "Maior que 100kg"

   endif
endif

if cSexo   = "F"

   nIdade := 0

   @ 03,02 say "Qual sua idade?"

   @ 03,20 get nIdade picture '999' valid nIdade > 0
   read

   if nIdade > 21
      @ 04,02 say "Maior que 21 anos"

   endif
endif

inkey (0)
