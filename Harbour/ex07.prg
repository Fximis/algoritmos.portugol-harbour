clear

nValor1 := 0
nValor2 := 0

@00,01 say "Digite dois valores para efetuar as quatro opera‡äes b sicas"

@00,60 get nValor1 picture '99'
@00,60 get nValor2 picture '99'
read

clear

@00,01 say "Multiplica‡ao"
@01,01 say nValor1+nValor2 picture '9999'

@03,01 say "Divisao"
@04,01 say nValor1/nValor2 picture '9999'

@06,01 say "Soma"
@07,01 say nValor1+nValor2 picture '9999'

@09,01 say "Subtra‡ao"
@10,01 say nValor1-nValor2 picture '9999'

