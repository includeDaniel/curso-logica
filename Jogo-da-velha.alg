Algoritmo "Jogo da velha"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 

Var
    MatrizJogo : vetor [1..3, 1..3] de caractere
    posicao : inteiro
    contadorJogadas : inteiro
    l, c: inteiro
     
     
Procedimento mostraJogo()

Inicio
      limpatela
      EscrevaL("|", MatrizJogo[1,1],"|", MatrizJogo[1,2],"|", MatrizJogo[1,3],"|")
      EscrevaL("|", MatrizJogo[2,1],"|", MatrizJogo[2,2],"|", MatrizJogo[2,3],"|")
      EscrevaL("|", MatrizJogo[3,1],"|", MatrizJogo[3,2],"|", MatrizJogo[3,3],"|")
      
FimProcedimento


Procedimento Jogada()

var
   XouO: caractere
inicio

   Se (ContadorJogadas % 2 = 0) entao
      XouO <- "O"
   senao
      XouO <- "X"
   Fimse
   Escreva("Vai jogar ",XouO," em qual posição ?")
   Leia(posicao)
   
   MarcaJogada(XouO)
   
FimProcedimento

Procedimento MarcaJogada(XouO : caractere)

Inicio


   Se( (posicao = 1) E (MatrizJogo[1,1] <> "X") E (MatrizJogo[1,1] <> "O") ) entao
              MatrizJogo[1,1] <- XouO
   FIMSE

   Se( (posicao = 2) E (MatrizJogo[1,2] <> "X") E (MatrizJogo[1,2] <> "O") ) entao
              MatrizJogo[1,2] <- XouO
   FimSe

   Se( (posicao = 3) E (MatrizJogo[1,3] <> "X") E (MatrizJogo[1,3] <> "O") ) entao
              MatrizJogo[1,3] <- XouO
   FimSe

   Se( (posicao = 4) E (MatrizJogo[2,1] <> "X") E (MatrizJogo[2,1] <> "O") ) entao
              MatrizJogo[2,1] <- XouO
   FimSe

   Se( (posicao = 5) E (MatrizJogo[2,2] <> "X") E (MatrizJogo[2,2] <> "O") ) entao
              MatrizJogo[2,2] <- XouO
   FimSe

   Se( (posicao = 6) E (MatrizJogo[2,3] <> "X") E (MatrizJogo[2,3] <> "O") ) entao
              MatrizJogo[2,3] <- XouO
   FimSe

   Se( (posicao = 7) E (MatrizJogo[3,1] <> "X") E (MatrizJogo[3,1] <> "O") ) entao
              MatrizJogo[3,1] <- XouO
   FimSe

   Se( (posicao = 8) E (MatrizJogo[3,2] <> "X") E (MatrizJogo[3,2] <> "O") ) entao
              MatrizJogo[3,2] <- XouO
   FimSe

   Se( (posicao = 9) E (MatrizJogo[3,3]<> "X") E (MatrizJogo[3,3] <> "O") ) entao
              MatrizJogo[3,3] <- XouO
   Fimse

   contadorJogadas <- ContadorJogadas + 1
   vitoria()
FimProcedimento


Procedimento  vitoria()

inicio

      //Verificar se ganhou
      // Possibilidades
      // 1,1   1,2   1,3
      // 2,1   2,2   2,3
      // 3,1   3,2   3,3
      
      // 1,1   2,1   3,1
      // 1,2   2,2   3,2
      // 1,3   2,3   3,3
      
      // 1,1   2,2   3,3
      // 1,3   2,2   3,1

      Se( (MatrizJogo[1,1] = "X")  E (MatrizJogo[1,2] = "X") E (MatrizJogo[1,3] ="X") ) entao
                          mostraJogo()
                          Escreval(" JOGADOR PORTADOR DO X VENCE")
                          fimalgoritmo
      FimSe

      Se((MatrizJogo[1,1] = "O")  E (MatrizJogo[1,2] = "O") E (MatrizJogo[1,3] ="O")) entao
                         mostraJogo()
                         Escreval(" JOGADOR PORTADOR DO O VENCE")
                         fimalgoritmo
      FimSe


      Se((MatrizJogo[2,1] = "X")  E (MatrizJogo[2,2] = "X") E (MatrizJogo[2,3] ="X")) entao
                         mostraJogo()
                         Escreval(" JOGADOR PORTADOR DO X VENCE")
                         fimalgoritmo
      FimSe
      Se((MatrizJogo[2,1] = "O")  E (MatrizJogo[2,2] = "O") E (MatrizJogo[2,3] ="O")) entao
                         mostraJogo()
                         Escreval(" JOGADOR PORTADOR DO O VENCE")
                         fimalgoritmo
      FimSe

      Se((MatrizJogo[3,1] = "X")  E (MatrizJogo[3,2] = "X") E (MatrizJogo[3,3] ="X")) entao
                         mostraJogo()
                         Escreval(" JOGADOR PORTADOR DO X VENCE")
                         Fimalgoritmo
      FimSe
      Se((MatrizJogo[3,1] = "O")  E (MatrizJogo[3,2] = "O") E (MatrizJogo[3,3] ="O")) entao
                         mostraJogo()
                         Escreval(" JOGADOR PORTADOR DO O VENCE")
                         fimalgoritmo
      FimSe


      Se((MatrizJogo[1,1] = "X")  E (MatrizJogo[2,1] = "X") E (MatrizJogo[3,1] ="X")) entao
                         mostraJogo()
                         Escreval(" JOGADOR PORTADOR DO X VENCE")
                         fimalgoritmo
      FimSe
      Se((MatrizJogo[1,1] = "O")  E (MatrizJogo[2,1] = "O") E (MatrizJogo[3,1] ="O")) entao
                         mostraJogo()
                         Escreval(" JOGADOR PORTADOR DO O VENCE")
                         fimalgoritmo
      FimSe


      Se((MatrizJogo[1,2] = "X")  E (MatrizJogo[2,2] = "X") E (MatrizJogo[3,2] ="X")) entao
                         mostraJogo()
                         Escreval(" JOGADOR PORTADOR DO X VENCE")
                         fimalgoritmo
      FimSe
      Se((MatrizJogo[1,2] = "O")  E (MatrizJogo[2,2] = "O") E (MatrizJogo[3,2] ="O")) entao
                         mostraJogo()
                         Escreval(" JOGADOR PORTADOR DO O VENCE")
                         fimalgoritmo
      FimSe


      Se((MatrizJogo[1,3] = "X")  E (MatrizJogo[2,3] = "X") E (MatrizJogo[3,3] ="X")) entao
                         mostraJogo()
                         Escreval(" JOGADOR PORTADOR DO X VENCE")
                         fimalgoritmo
      FimSe
      Se((MatrizJogo[1,3] = "O")  E (MatrizJogo[2,3] = "O") E (MatrizJogo[3,3] ="O")) entao
                         mostraJogo()
                         Escreval(" JOGADOR PORTADOR DO O VENCE")
                         fimalgoritmo
      FimSe


      Se((MatrizJogo[1,1] = "X")  E (MatrizJogo[2,2] = "X") E (MatrizJogo[3,3] ="X")) entao
                         mostraJogo()
                         Escreval(" JOGADOR PORTADOR DO X VENCE")
                         fimalgoritmo
      FimSe
      
      Se((MatrizJogo[1,1] = "O")  E (MatrizJogo[2,2] = "O") E (MatrizJogo[3,3] ="O")) entao
                         mostraJogo()
                         Escreval(" JOGADOR PORTADOR DO O VENCE")
                         fimalgoritmo
      FimSe
      
      Se((MatrizJogo[1,3] = "X")  E (MatrizJogo[2,2] = "X") E (MatrizJogo[3,1] ="X")) entao
                         mostraJogo()
                         Escreval(" JOGADOR PORTADOR DO O VENCE")
                         fimalgoritmo
      FimSe
      
        Se((MatrizJogo[1,3] = "O")  E (MatrizJogo[2,2] = "O") E (MatrizJogo[3,1] ="O")) entao
                         mostraJogo()
                         Escreval(" JOGADOR PORTADOR DO O VENCE")
                         fimalgoritmo
      FimSe

      

FimProcedimento

Procedimento Jogo()

inicio

      contadorJogadas <-1

      MatrizJogo[1,1] <- "1"
      MatrizJogo[1,2] <- "2"
      MatrizJogo[1,3] <- "3"
      MatrizJogo[2,1] <- "4"
      MatrizJogo[2,2] <- "5"
      MatrizJogo[2,3] <- "6"
      MatrizJogo[3,1] <- "7"
      MatrizJogo[3,2] <- "8"
      MatrizJogo[3,3] <- "9"
      
      Repita
         mostraJogo()
         Jogada()
      ate(contadorJogadas = 10)
      mostraJogo()
      Escreva(" Deu VELHA!!")
      Fimalgoritmo
      
FimProcedimento

inicio

      Jogo()
      
Fimalgoritmo
