Algoritmo "EXC14L02"
// 14. Solicitar o ano de nascimento (ex.: 2005) e informar se o ano é bissexto ou não.
// Autor(a)    : Fellipe Miquelão Schmidt - R.A.: 25153218-2
// Data atual  : 19/08/2025
Var
   ano: inteiro

inicio

   escreval ("digite seu ano de nascimento para saber se é bissexto")
   leia (ano)

   Se (ano % 400 = 0) ou ((ano % 4 = 0) e (ano % 100 <> 0)) entao
      escreva ("Em", ano, " o ano era bissexto")
   senao
      escreva ("O", ano, " nao era bissexto")
   fimse

Fimalgoritmo