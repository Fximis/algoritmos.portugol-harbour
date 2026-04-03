clear

@ 00,01 say "C lculo de dois numeros e seu produto utilizando vari vel"

nPrimeiroValor := 0
nSegundoValor := 0


@01,01 say "Digite o primeiro valor para multiplicar"
@02,01 say "Digite o segundo valor para multiplicar"

@01,41 get nPrimeiroValor
@02,40 get nSegundoValor
read

nProduto := nPrimeiroValor * nSegundoValor

@03,01 say "O resultado ‚: " + alltrim(str(nProduto))
//@03,16 say nProduto



