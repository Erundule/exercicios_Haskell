module Ex3 where
{-
QUESTAO 3

Usando compreensão de listas e a função grid definida na questão anterior, defina uma 
função quadrado :: Int -> [(Int,Int)] que retorna um plano de coordenadas quadrado 
de tamanho n, excluindo a diagonal principal (0,0) a (n,n). 
-}

grid :: (Num a, Num b, Enum a, Enum b) => a -> b -> [(a, b)]
grid m n = [ (x, y) | x <- [0 .. m], y <- [0 .. n]]

quadrado :: (Num b, Enum b, Eq b) => b -> [(b, b)]
quadrado n = [(x, y) | (x, y) <- grid n n , x /= y]

--pega a funcao grid da segunda questao e aplica uma restricao para so retornar 
--tuplas que possuem x diferente de y