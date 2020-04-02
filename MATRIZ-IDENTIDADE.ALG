Algoritmo "MATRIZ-IDENTIDADE"

Var
   mID : vetor [1..3, 1..3] de Inteiro
   L, C: inteiro


Inicio
      Para L <- 1 ate 3 faca
           Para C <- 1 ate 3 faca
                Se (L = C) entao
                   mID[L, C] <- mID[L, C] + 1
                Senao
                      mID[l, c] <- mID[L, C] + 0
                FimSe
           FimPara
      
      FimPara
      Para L <- 1 ate 3 faca
           Para C <- 1 ate 3 faca
                Escreva(mID[L, C])
           
           
           FimPara
           EscrevaL()
      FimPara







Fimalgoritmo