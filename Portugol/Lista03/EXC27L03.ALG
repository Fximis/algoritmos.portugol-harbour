Algoritmo "EXC27L03"
//
//
// Descri��o   : Solicite um nome completo e apresente apenas o �ltimo sobrenome com todos os caracteres min�sculos.
// Autor(a)    : Fellipe Miquel�o Schmidt 
// Data atual  : 26/08/2025
Var
    frase: caracter
    i: inteiro

Inicio
    escreval("Digite o nome completo:")
    leia(frase)

    para i de 1 ate compr(frase) faca
        se (copia(frase, i, 1) = " ") entao
            frase :=  maiusc(copia(frase, 1, i)) + copia(minusc(frase), i + 1, compr(frase) - i)
        fimse
    fimpara

    escreval(frase)

Fimalgoritmo