clear

nValor1 :=0
nValor2 :=0
nValor3 :=0
nMedia :=0

@00,01 say "-------------- MêDIA DE TR“S VALORES---------------"
@02,01 say "Digite o primeiro valor:"
@03,01 say "Digite o segundo valor:"
@04,01 say "Digite o terceiro valor:"


@02,24 get nValor1
@03,24 get nValor2
@04,24 get nValor3
read

nMedia := (nValor1 + nValor2 + nValor3)/3

clear

@00,01 say "--------------- RESULTADO ---------------"
@02,01 say "A mÇdia Ç: " + alltrim(str(nMedia))
//@02,12 say nMedia
