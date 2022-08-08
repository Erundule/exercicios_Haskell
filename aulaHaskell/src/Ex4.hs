module Ex4 where
{-
QUESTAO 4  

De maneira similar à função length, mostre como a função replicate :: Int -> a -> [a] 
que produz uma lista de elementos idênticos pode ser definida usando compreensão de listas.
-}

replicar1 :: Int -> a -> [a]
replicar1 n m = [m | _ <- [1 .. n]]