# Softwares

1. Dissecando-matriz.alg
2. Matriz.alg
3. Contagem-inteligente.alg
4. Jogo-da-velha.alg
5. Par-ou-Impar.alg
6. Maior-peso.alg
7. Notas-escola.alg
8. Torneio.alg
 
## 1. Dissecando-matriz.alg
O algoritmo Dissecando-matriz.alg solicita 16 valores, para montar uma matriz 4X4 e logo em seguida mostra 5 opções, são elas: 
1. Mostrar a matriz
2. Diagonal Principal 
3. Triângulo superior 
4. Triângulo inferior
5. Sair
 
### Procedimento MostraMatriz()
O procedimento MostraMatriz mostrará todos elementos da matriz 4X4 conforme código abaixo

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
O procedimento DiagonalPrincipal exibe a diagonal principal da matriz 4X4

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
O procedimento TrianguloSuperior exibe o triângulo superior da matriz 4X4

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
O procedimento TrianguloInferior exibe o triângulo inferior da matriz 4X4

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

O algoritmo Matriz.alg solicita 16 valores, para montar uma matriz 4X4 e logo em seguida mostra 3 informações, são elas: 

1. A soma da diagonal principal
2. O produto dos valores da 2 linha
3. O maior número da terceira coluna

### Montando a soma da diagonal principal 

Para obter a soma da diagonal principal basta comparar a linha com a coluna "(l == c)" se elas forem iguais então o software irá somar o valor da matriz nesta linha e coluna a variável "sDP".

```
sDP <- 0

Para l <- 1 ate 4 faca
   Para C <- 1 ate 4 faca
      Escreva(" Digite um valor : [", l,",", c,"]")
      Leia(M[L, C])
      Se (l = c) entao
         sDP <- (sDP + M[l, c])
      Fimse
   FimPara
FimPara

```

### Montando o produto dos valores da 2 linha 

Para obter o produto dos valores da 2 linha basta iterar de 1 a 4 na coluna mantendo 2 fixo na linha guardando o produto na variável "p2L"

```
p2L <- 1

Para c <- 1 ate 4 faca
   p2L <- p2L * m[2, C]
FimPara

```


### Montando o maior número da terceira coluna 

Para obter o maior número da terceira coluna basta pegar o primeiro elemento "1,3" e comparar com os demais elementos da coluna 3, se algum for maior basta coloca-lo na variável "m3C"

```
m3C <- 0

Para  l <- 1 ate 4 faca
   Para l <- 1 ate 4 faca
      Se(M[l,3]) > (m3c) entao
         m3C <- M[l,3]
      FimSe
   FimPara
FimPara

```

## 3. Contagem-inteligente.alg 

O algoritmo Contagem-inteligente.alg solicita 2 valores, início e fim

* Se o início for menor que o fim, então o algoritmo irá contar de forma decrescente 

* Se o início for maior que o fim, então o algoritmo irá contar de forma crescente 

* Se o início for igual ao fim, então só aparecerá o valor digitado na tela

### Procedimento Contagem()
O procedimento Contagem() mostra a estrutura gráfica do algoritmo:

````
Se (I <= F) entao
   Enquanto (I <= F) faca
      EscrevaL (I)
      I <- I + 1
   FimEnquanto
Senao
   Se (I >= F) entao
      Enquanto (I >= F) faca
      EscrevaL (I)
      I <- I - 1
      FimEnquanto
   Fimse
Fimse

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




