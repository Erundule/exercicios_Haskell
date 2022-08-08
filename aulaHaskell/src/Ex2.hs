module Ex2 where
{-
QUESTAO 2

Suponha que um plano de coordenadas de tamanho m x n é dado pela lista de todos os pares (x,y) 
de inteiros tal que 0  x  m e 0 y n. Usando compreensão de listas, defina a função 
grid :: Int -> Int -> [(Int,Int)] que retorna o plano de coordenadas de um dado tamanho
-}

grid :: (Num a, Num b, Enum a, Enum b) => a -> b -> [(a, b)]
grid m n = [ (x, y) | x <- [0 .. m], y <- [0 .. n]]
-- x e y tal que x tirado de 0 a m, e y tirado de 0 a n.
-- retorna tuplas com as combinacoes possiveis de n e m 
