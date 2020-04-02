Algoritmo "semnome"

Var
   T: vetor [1..3] de  caractere
   AUX: caractere
   C, N, I : inteiro
Inicio
      EscrevaL("------------------------")
      EscrevaL(" Campeonato de Futebol")
      EscrevaL("------------------------")
      Para C <- 1 ate 3 faca
           Escreva("Nome do", c, " time: ")
           Leia(T[c])
      FimPara

      LimpaTela
      
      Para C <- 1 ate 3 faca

         Escreval(T[1], "   []  X  []   ", T[2])
         Escreval(T[1], "   []  X  []   ", T[3])
         SE C < 3 ENTAO
            AUX <- T[1]
            T[1] <- T[C+1]
            T[C+1] <- AUX
         fimse
      FimPara

Fimalgoritmo