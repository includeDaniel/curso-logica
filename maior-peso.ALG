Algoritmo "semnome"

Var
   I :inteiro
   N, pesado : caractere
   P, Mai :Real
Procedimento Topo()
Inicio
      limpatela
      EscrevaL("--------------------------------- ")
      EscrevaL("     DETECTOR     DE     PESADO ")
      Escreval("Maior peso ate agora ", Mai, "Kg")
      Escreval("--------------------------------- ")
FimProcedimento
Inicio
      Limpatela
      Topo()
      Para I <- 1 ate 5 faca
           Escreva("Digite o nome: ")
           Leia(N)
           Escreva("Digite o peso de ", N, ": ")
           Leia(P)
           Se (P > Mai) entao
              Mai <- P
              pesado <- N
           Fimse
      Topo()
      FimPara
      Topo()
      EscrevaL(" A pessoa mais pesada foi ", pesado, ", com ", Mai, " quilos.")
Fimalgoritmo