module Ex7 where
{-
QUESTAO 7

Mostre que a compreensão de lista [(x,y) | x <- [1,	2], y <- [3,4]], com dois geradores, pode ser representada
usando duas compreensões de lista, cada uma com apenas um gerador. Dica: Procure usar a função concat. 
-}

funcaoConcatenar :: [(Integer, Integer)]
funcaoConcatenar = concat [[(1,y) | y <- [3,4]] , [(2,y) | y <- [3,4]]]
--a funcao concat recebe uma lista de listas e concatena elas
--mesma coisa que ([(1,y) | y <- [3,4]]) ++ ([(2,y) | y <- [3,4]])