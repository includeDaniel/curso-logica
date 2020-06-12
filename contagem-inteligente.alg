Algoritmo "ContagemInteligente"


Var
   Cont, I, F, maior : Inteiro
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
Inicio
      Contagem()
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
Fimalgoritmo
