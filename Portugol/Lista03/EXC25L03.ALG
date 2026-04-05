Algoritmo "EXC25L03"
//
//
// Descri��o   : Solicite uma frase e apresente a primeira letra de cada palavra em mai�sculo.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var
    frase: caracter
    i: inteiro

Inicio
    escreval("Digite uma frase:")
    leia(frase)

    se (compr(frase) > 0) entao
        frase := maiusc(copia(frase, 1, 1)) + copia(frase, 2, compr(frase) - 1)
    fimse

    para i de 1 ate compr(frase) faca
        se (copia(frase, i, 1) = " ") entao
            frase := copia(frase, 1, i) + maiusc(copia(frase, i + 1, 1)) + copia(frase, i + 2, compr(frase) - i - 1)
        fimse
    fimpara

    escreval(frase)

Fimalgoritmo