clear

nValor1 :=0
nValor2 :=0
nValor3 :=0
nValor4 :=0

@00,01 say "Digite um valor entre 15,25 e 28,28"
@01,01 say "Digite um valor menor que o primeiro"
@02,01 say "Digite um valor menor que o segundo"
@03,01 say "Digite um valor seja o produto dos 3 anteriores"

@00,37 get nValor1 picture '@E 99.99' valid nValor1 >=15.25 .and. nValor1<=28.28
@01,37 get nValor2 picture '@E 99.99' valid nValor2 < nValor1
@02,36 get nValor3 picture '@E 999.99' valid nValor3 < nValor2
@03,48 get nValor4 picture '@E 9,999,999.99' valid nValor4 == nValor1 * nValor2 * nValor3
read

clear

@00,01 say nValor1
@01,01 say nValor2
@02,01 say nValor3
@03,01 say nValor4


InKey(0)
