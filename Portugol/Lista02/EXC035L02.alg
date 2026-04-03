//35.	Solicitar os dados de 12 pessoas
//(nome, idade, sexo, quantidade de filhos)
//e apresentar:
//"	Percentual de homens;
//"	Média de idade das mulheres sem filhos;
//"	Nome e idade da pessoa mais jovem;
//"	Quantidade total de mulheres entrevistadas.
//(Todos os dados devem ser validados na entrada)

algoritmo "semnome"
var
  nome,sexo:caracter
  idade,qtf,x:inteiro
  qthom:inteiro
  qtmulsf:inteiro //quantidade de mulheres sem filhos
  somidmulsf:inteiro //soma idade mulheres sem filhos
  tmp:inteiro //variavel apenas para testar no modo aleatorio
  nomeJov:caracter
  idadeJov:inteiro
inicio
  qthom<-0
  qtmulsf<-0
  somidmulsf<-0
  idadeJov<-999
  
  PARA x de 1 ate 12 faca
    escreval("PESSOA: ",x)

    REPITA
      escreva("nome? ")
      leia(nome)
    Ate (nome<>"")

    REPITA
      escreva("sexo (F/M)? ")
      leia(sexo)
      //comandos abaixo devem ser comentados ou removidos
      tmp<-RANDI(2)
      SE (tmp=0) entao
        sexo<-"F"
      senao
        sexo<-"M"
      fimse
      //fim dos comandos a serem comentados
      
      SE (sexo<>"F") e (sexo<>"M") entao
        escreval("sexo invalido")
      fimse
    Ate (sexo="F") ou (sexo="M")

    REPITA
      escreva("idade ")
      leia(idade)
    Ate (idade>=16) e (idade<=100)

    REPITA
      escreva("Quant filhos ")
      leia(qtf)
    Ate (qtf>=0)
    
    //calculos
    se (sexo="M") entao
      qthom <- qthom+1
    fimse

    se (sexo="F") e (qtf=0) entao
      qtmulsf <- qtmulsf+1
      somidmulsf <- somidmulsf +idade
    fimse
    
    se (idade < idadeJov) entao
      idadeJov <- idade
      nomeJov  <- nome
    fimse

    escreval("------------------------------")
  FIMPARA
  //resultados
  escreval("Percentual de homens ",qthom*100/12,"%")
  escreva ("Media idade mulheres sem filhos ")
  se (qtmulsf>0) entao
    escreval(somidmulsf/qtmulsf)
  senao
    escreval("0")
  fimse
  escreval("pessoa mais jovem: ",nomeJov)
  escreval("idade pessoa mais jovem: ",idadeJov)
  escreval("quantidade de mulheres: ",12-qthom)
fimalgoritmo
