module Ex1 where
{-
QUESTAO 1

Usando compreensão de listas, forneça uma expressão que calcula a soma 1² +2²+...+100² 
dos quadrados dos primeiros 100 números inteiros.
-}

lista :: Integer
lista = sum [x * x | x <- [1 .. 100]]
--calcula a soma dos quadrados dos numeros 1 a 100
