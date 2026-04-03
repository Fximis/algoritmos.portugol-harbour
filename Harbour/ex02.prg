clear

cNome := space(30)
nIdade := 0
nPeso := 0

@01,01 to 07,40

@02,02 say "Nome:"
@03,02 say "Digite a sua idade:"
@04,02 say "Digite o seu peso.:"

@02,06 get cNome picture '@!' valid !empty(cNome)
@03,22 get nIdade picture '999' valid nIdade > 0
@04,22 get nPeso  picture '@E 999.99' valid nPeso > 0
read

@02,02 clear to 06,39

@02,11 say "DADOS CADASTRADOS"
@04,02 say "Nome.: " + alltrim(cNome)
//@04,09 say cNome
@05,02 say "Idade: " + alltrim(str(nIdade))
//@05,09 say nIdade
@06,02 say "Peso.:" + alltrim(str(nPeso))
//@06,09 say nPeso


inkey(0)
