module Ex8 where

{-
QUESTAO 8

Redefina a função posicoes usando a função buscar, disponível em 
https://emanoelbarreiros.github.io/funcional/haskell-5#a-fun%C3%A7%C3%A3o-zip
-}
buscar :: Eq a => a -> [(a,b)] -> [b]
buscar k xs = [v | (k', v) <- xs, k == k']
-- buscar ‘a’ [(‘a’, 1), (‘b’, 2), (‘c’, 3), (‘a’, 4)]
--[1, 4]
posicoes :: Eq a => a -> [a] -> [Int]
posicoes x xs = [i | (z, i) <- zip xs [0 ..], x == z]
-- posicoes ‘a’ “abracadabra”
--[0, 7]

--solucao:
pos2 :: Eq a => a -> [a] -> [Int]
pos2 x xs =  buscar x (zip xs [0 ..])
--pos2 ‘a’ [‘a’, ‘b’, ‘c’, ‘a’]
--[0, 3]
