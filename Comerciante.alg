algoritmo "Comerciante"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : [Nome do Professor]
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : DATA_ATUAL/MES_ATUAL/ANO_ATUAL
var

Produtos : vetor[0..10] de caractere
PrecoCompra   : vetor[0..10] de real
PrecoVenda   : vetor[0..10] de real
i, nMerc : inteiro
Lucro, ValTot, LucroTot, ValCompra, percentLucro, ValVenda, lucroAbaixode10, lucroEntre10e20, lucroAcimade20  : real

inicio

escreva("Quantos Produtos você deseja informar ?: ")
leia(nMerc)

    para i de 0 ate nMerc - 1 faca
        escreva("Digite o nome do ", i + 1 ,"º Produto: ")
            leia(Produtos[i])
        escreva("Digite o Preço de Compra do(a)", Produtos[i], ":")
            leia(PrecoCompra[i])
        escreva("Digite o Preço de Venda do(a) ", Produtos[i], ":")
            leia(PrecoVenda[i])
    fimpara

    Lucro     <- 0
    ValTot    <- 0
    LucroTot  <- 0
    ValCompra <- 0
    ValVenda  <- 0
    lucroAbaixode10 <- 0
    lucroEntre10e20 <- 0
    lucroAcimade20 <- 0


    para i de 0 ate nMerc - 1 faca
        Lucro <- PrecoVenda[i] - PrecoCompra[i]
        percentLucro <- Lucro * 100.0 /  PrecoCompra[i]

        se percentLucro < 10 entao
            lucroAbaixode10 <- lucroAbaixode10 + 1
            senao
                se percentLucro <= 20 entao
                    lucroEntre10e20 <- lucroEntre10e20 + 1
                senao
                    lucroAcimade20 <- lucroAcimade20 + 1
                fimse
        fimse
    fimpara

    para i de 0 ate nMerc - 1 faca
       ValCompra <- ValCompra + PrecoCompra[i]
       ValVenda <- ValVenda + PrecoVenda[i]
    fimpara

    LucroTot <- ValVenda - ValCompra

    escreval("Realtório Final")
    escreval("Lucro abaixo de 10% ", lucroAbaixode10 )
    escreval("Lucro abaixo entre 10% e 20% ", lucroEntre10e20)
    escreval("Lucro acima de 20% ", lucroAcimade20 )
    escreval("Valor Total de Compras:", ValCompra )
    escreval("Valor Total de Vendas: ", ValVenda)
    escreval("Lucro Total: ", LucroTot)

fimalgoritmo