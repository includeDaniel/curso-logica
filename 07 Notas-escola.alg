Algoritmo "Notas da escola"
// Disciplina  :  [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 

Var
   ACERTOS:Vetor [1..3] de inteiro
   GABARITO:Vetor [1..5] de caractere
   ALUNO:Vetor [1..3] de caractere
   RESPOSTA:Vetor [1..3, 1..5] de caractere
   R: inteiro
   I: inteiro
   Totacertos: real
   media: Real
Inicio

      EscrevaL(" PASSO 1 CADASTRO DE GABARITO ")
      EscrevaL("------------------------------ ")
       Para I <- 1 ate 5 faca
            Escreva(" Questao ", I, ":")
            Leia(GABARITO[I])
       FimPara
       LimpaTela
       Para I <- 1 ate 3 faca
         LimpaTela
         Escreval("----------")
         Escreval("  Aluno ", I)
         Escreval("----------")
         Escreva("Nome: ")
         Leia(ALUNO[I])
         EscrevaL("RESPOSTAS DADAS ")
         Para R <- 1 ate 5 faca
            Escreva(" Questao ", R, ":")
            Leia(RESPOSTA[I,R])
            SE(RESPOSTA[I,R] = GABARITO[R]) ENTAO
               ACERTOS[I] <- (ACERTOS[I] +2)
            FIMSE
         FimPara
       FimPara

             TotAcertos <- TotAcertos + (ACERTOS[1] + ACERTOS[2] + ACERTOS [3]) / 3

       
       
              LimpaTela
              EscrevaL("  NOTAS FINAIS ")
              EscrevaL("------------------------ ")
              Escreval(   ALUNO[1], ACERTOS[1])
              Escreval(   ALUNO[2], ACERTOS[2])
              Escreval(   ALUNO[3], ACERTOS[3])
              Escreval("------------------------")
              EscrevaL("Media da turma:", TotAcertos)
Fimalgoritmo
