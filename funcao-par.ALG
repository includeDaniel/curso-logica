Algoritmo "semnome"

Var
   N : Inteiro
   R: Caractere
   
Funcao ParouImpar(Y : Inteiro): Caractere
Inicio
      Se Y%2 = 0 entao
           Retorne "PAR"
      Senao
           Retorne "IMPAR"
      Fimse
FimFuncao

Inicio
      EscrevaL("Digite um numero: ")
      Leia(N)
      R <- ParouImpar(N)
      EscrevaL("O numero", N ," e um valor ", R)
Fimalgoritmo