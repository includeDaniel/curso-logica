Algoritmo "semnome"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 

Var
   valores: vetor[1..3, 1..3] de inteiro
   l, c: inteiro

Inicio
      Para l <- 1  ate 3 faca
           Para c <- ate 3 faca
                EscrevaL(" Digite o valor da posição : [ ", l, ",", c,"]")
                Leia(Valores[l, c])
           FimPara
      FimPara
      Escreva(" MATRIZ")
      Escreva("---------")
      Para l <- 1 ate 3 faca
           Para 1 <- ate 3 faca
              Escreva(valores[l, c])
           FimPara
      FimPara
fimalgoritmo