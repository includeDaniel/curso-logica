# Arquivos:

1. Dissecando-matriz.alg
2. Matriz.alg
3. Contagem-inteligente.alg
4. Jogo-da-velha.alg
5. Par-ou-Impar.alg
6. Maior-peso.alg
7. Notas-escola.alg
8. Torneio.alg
 
## 1. Dissecando-matriz.alg
O arquivo DissecandoMatriz.alg te pergunta 16 valores, e logo em seguida aparece 5 opções, são elas: Mostrar a matriz, Diagonal Principal, Triangulo superior, Trianguo inferior e sair.
 
### Procedimento MostraMatriz()
O procedimento MostraMatriz é mostrar todos elementos de uma matriz 4X4 conforme código abaixo

```
Procedimento MostraMatriz()
inicio
   Para l <- 1 ate 4 faca
      Para c <- 1 ate 4 faca
         Escreva(m[l,c]:4)
      FimPara
      EscrevaL()
   FimPara
FimProcedimento

```
### Procedimento DiagonalPrincipal()
O procedimento DiagonalPrincipal exibe a diagonal principal de uma matriz 4X4, a digonal principal é ....

```
Procedimento DiagonalPrincipal()
var t: inteiro
inicio
   Para l <- 1 ate 4 faca
      EscrevaL(m[l,l]:4)
      Para t <- 1 ate l faca
         Escreva("    ")
      FimPara
   FimPara
FimProcedimento
```
### Procedimento TrianguloSuperior()
O procedimento TrianguloSuperior exibe o triangulo superior na matriz 4X4, o tringulo superior é ....

```
 Procedimento TrianguloSuperior()
var t: Inteiro
inicio
   Para l <- 1 ate 3 faca
      Escreva("    ")
      Para c <- l+1 ate 4 faca
         Escreva(m[l,c]:4)
      FimPara
      EscrevaL()
      Para t <- 1 ate l faca
         Escreva("    ")
      FimPara
   FimPara
   EscrevaL()
FimProcedimento

```
### Procedimento TrianguloInferior()
O procedimento TrianguloInferior exibe o triangulo inferior na matriz 4X4, o triangulo inferior é ....

```
Procedimento TrianguloInferior()
inicio
   Para l <- 2 ate 4 faca
      EscrevaL()
      Para c <- 1 ate l-1 faca
         Escreva(m[l,c]:4)
      FimPara
   FimPara
   EscrevaL()
FimProcedimento

```
## 2. Matriz.alg

O arquivo Matriz.alg te pergunta 16 valores para o usuarios para criar a matriz na tela, quando exibida também será exibido a soma da diagonal da matriz, o produto dos valores da 2 linha da matriz e o maior numero da terceira coluna.

## 3. Contagem-inteligente.alg 
O arquivo Contagem-inteligente.alg te pergunta o inicio da contagem e o fim da contagem, e executa a contagem.

### Procedimento Contagem()
O procedimento Contagem() mostra a estrutura gráfica do algoritmo:

````
Procedimento Contagem()
Inicio
      EscrevaL("Contagem Inteligente ")
      EscrevaL("-------------------- ")
      Escreva("Inicio ")
      Leia(I)
      Escreva("Fim ")
      Leia(F)
      EscrevaL("  ------------ ")
      EscrevaL("    CONTANDO ")
      EscrevaL("  ------------ ")
FimProcedimento

````
## 4. Jogo-da-velha.alg
O arquivo Jogo-da-velha.alg exibe na tela uma matriz 3X3 e numera ela de 1 ate 9, então ele te pergunta onde você quer jogar o "X" e depois a "O" e assim por diante, ele detecta quando o jogador vence e também quando da velha.

### Procedimento mostraJogo()
O procedimento mostraJogo() exibe a estrutura gráfica do algoritmo :

````
     
Procedimento mostraJogo()

Inicio
      limpatela
      EscrevaL("|", MatrizJogo[1,1],"|", MatrizJogo[1,2],"|", MatrizJogo[1,3],"|")
      EscrevaL("|", MatrizJogo[2,1],"|", MatrizJogo[2,2],"|", MatrizJogo[2,3],"|")
      EscrevaL("|", MatrizJogo[3,1],"|", MatrizJogo[3,2],"|", MatrizJogo[3,3],"|")
      
FimProcedimento 
 
````

### Procedimento Jogada()
O procedimento Jogada() pergunta qual posição vai ser a jogada e com a ajuda do procedimento MarcaJogada() ele executa a jogada por completo.

````

Procedimento Jogada()

var
   XouO: caractere
inicio

   Se (ContadorJogadas % 2 = 0) entao
      XouO <- "O"
   senao
      XouO <- "X"
   Fimse
   Escreva("Vai jogar ",XouO," em qual posição? ")
   Leia(posicao)
   
   MarcaJogada(XouO)
   
FimProcedimento

````

### Procedimento MarcaJogada(XouO : caractere)
O procedimento MarcaJogada() Veririfica se a posição ja foi marcada, senão ele marca com o símbolo da rodada.

````
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

````

### Procedimento vitoria()
O procedimento vitoria() verifica se o jogador ganhou o jogo.

````

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

````

### Procedimento jogo()
O procedimento jogo() engloba tudo e conta as jogadas para veririficar se deu velha.

````
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

````
## 5. Par-ou-Impar.alg
O arquivo Par-ou-Impar.alg pede que seja digitado um número e verifica se o número é par ou ímpar.

### Função ParouImpar(Y:inteiro):caractere
A função ParouImpar verifica se o número é par ou ímpar.

````
   
Funcao ParouImpar(Y : Inteiro): Caractere
Inicio
      Se Y%2 = 0 entao
           Retorne "PAR"
      Senao
           Retorne "IMPAR"
      Fimse
FimFuncao

`````
## 6. Maior-peso.alg
O arquivo Maior-peso.alg pede que digite 1 nome e 1 peso 5 vezes e vai atualizando em tempo real o maior peso, no final do algoritmo mostra o nome da pessoa e o peso.

### Procedimento Topo()
O procedimento Topo() mostra a estrutura gráfica da parte de cima que atualiza em tempo real o peso da pessoa

````

Procedimento Topo()
Inicio
      limpatela
      EscrevaL("--------------------------------- ")
      EscrevaL("     DETECTOR     DE     PESADO ")
      Escreval("Maior peso ate agora ", Mai, "Kg")
      Escreval("--------------------------------- ")
FimProcedimento

````
## 7. Notas-escola.alg
O arquivo Notas-escola.alg pede o gabarito da prova para o usuario no começo, e depois pede o nome de 3 alunos e seus gabaritos no final mostra a pontuação do aluno e a media da turma(no caso os 3 alunos).

## 8. Torneio.alg
O arquivo Torneio.alg solicita o nome de 3 times, e faz uma tabela mostrando os jogos de forma que todos jogam contra todos 2 vezes.




