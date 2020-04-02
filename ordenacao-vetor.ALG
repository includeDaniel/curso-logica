Algoritmo "semnome"

Var
   vet:vetor [1..4] de inteiro
   i, j , aux :inteiro


Inicio
      para i <- 1 ate 4 faca
           Escreva(" Digite um valor ")
           Leia(vet[i])
      fimpara

      Para i <- 1 ate 3 faca
           Para j <- i+1 ate 4 faca
                Se(vet[i] > vet [j]) entao
                          aux <- vet[i]
                          vet[i] <- vet[j]
                          vet[j] <- aux
                fimse
            Fimpara
      Fimpara


      Para i <- 1 ate 4 faca
           Escreva("{",vet[i], "}")
      FimPara
                          
                          
fimalgoritmo