# 01 DissecandoMatriz.alg
 
## Procedimento MostraMatriz()
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
## Procedimento DiagonalPrincipal()
O procedimento DiagonalPrincipal exibe a diagonal principal de uma matriz 4X4, a digonal principal é .....

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

