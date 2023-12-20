algoritmo "IMC"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : [Nome do Professor]
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : DATA_ATUAL/MES_ATUAL/ANO_ATUAL
var

altura: real
peso: real
imc: real
nome: caractere

inicio

escreva(" Digite seu nome ")
leia(nome)

escreva( nome, " ,digite seu peso ")
leia(peso)

escreva( nome, " ,digite sua altura ")
leia(altura)

imc <- peso / altura

escreva( nome, " ,seu IMC é igual a: ", imc)

fimalgoritmo