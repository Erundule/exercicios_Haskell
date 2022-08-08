module Ex5 where
{-
QUESTAO 5

Uma tupla (x,y,z) de inteiros positivos é Pitagoreana se satisfaz a equação x² + y² = z². 
Usando compreensão de listas com três geradores, defina a função pitag :: Int -> [(Int, Int, Int)] 
que retorna uma lista de todas as tuplas que satisfazem a condição estabelecida e cujos componentes 
são menores ou iguais a um dado limite.
-}

pitagoras :: Int -> [(Int, Int, Int)]
pitagoras n = [(x, y, z) | x <- [3 .. n], y <- [3 .. n], z <- [3 .. n], (x * x) + (y * y) == (z * z)]
