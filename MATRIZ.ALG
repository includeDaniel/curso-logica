Algoritmo "semnome"

Var
   M: vetor [1..4, 1..4] de inteiro
   l, c, sDP, p2L, m3C : inteiro
Inicio
      sDP <- 0
      p2L <- 1
      m3C <- 0
      Para l <- 1 ate 4 faca
           Para C <- 1 ate 4 faca
                Escreva(" Digite um valor : [", l,",", c,"]")
                Leia(M[L, C])
                Se (l = c) entao
                   sDP <- (sDP + M[l, c])
                Fimse
            FimPara
      FimPara
      Para l <- 1 ate 4 faca
           Para C <- 1 ate 4 faca
                Escreva(M[l, c]:4)
           FimPara
           EscrevaL()
      FimPara
      Para c <- 1 ate 4 faca
           p2L <- p2L * m[2, C]
      FimPara
      Para  l <- 1 ate 4 faca
          Para l <- 1 ate 4 faca
               Se(M[l,3]) > (m3c) entao
                          m3C <- M[l,3]
               FimSe
      
          FimPara
      FimPara
      
      
      
      EscrevaL(" A soma da diagonal principal é de", sDP)
      EscrevaL(" O Produto dos valores da 2 linha é", p2L)
      EscrevaL(" O maio numero da terceira coluna é", m3C)


Fimalgoritmo
