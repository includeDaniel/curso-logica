Algoritmo "semnome"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 

Var
   V:vetor [1..7] de inteiro
   C:Inteiro
   N:inteiro

Inicio
      Para C <- 1 ate 7 faca
           Escreval("")
           Escreval("digite um numero ")
           Leia(N)
           Se (N mod 2 = 0) entao
              Escreva("Este numero é par ")
           senao
              Escreva("Este numero é impar ")

           Fimse

      Fimpara
Fimalgoritmo