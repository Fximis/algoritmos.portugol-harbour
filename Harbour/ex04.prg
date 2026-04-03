clear

cNome := space(40)

@01,01 say "Digite o seu nome:"

@01,19 get cNome picture '@!' valid !empty(cNome)
read

clear

cTabela := "|****************************************************************|"

@01,00 say cTabela
@02,00 say "|*"
@02,27 say "SUPER SISTEMA"
@02,64 say "*|"
@03,00 say "|*"
@03,05 say "****************(A P R E S E N T A C A O)****************"
@03,64 say "*|"
@04,00 say "|*"
@04,64 say "*|"
@05,00 say "|*"
@05,10 say "Sistema desenvolvido pelos alunos do"
@05,64 say "*|"
@06,00 say "|*"
@06,03 say "Curso de programa‡ao da SG Sistemas - Proj. SGTrainee"
@06,64 say "*|"
@07,00 say "|*"
@07,64 say "*|"
@08,00 say "|*"
@08,03 say "Aluno: " + alltrim(cNome)
//@08,10 say cNome
@08,64 say "*|"
@09,00 say "|*"
@09,03 say "Linguagem de Programa‡Æo: Harbour"
@09,64 say "*|"
@10,00 say "|*"
@10,03 say "[07/01/2025]"
@10,64 say "*|"
@11,00 say cTabela

inkey(0)
