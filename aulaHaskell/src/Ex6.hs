module Ex6 where
{-
QUESTAO 6

Um inteiro positivo é perfeito se ele é igual à soma de todos os seus fatores, excluindo o próprio número. 
Usando compreensão de listas e a função fatores, defina a função perfeitos :: Int -> [Int] 
que retorna a lista de todos os números perfeitos menores que um limite informado como argumento
-}

fatores :: Int -> [Int]
fatores n = [x | x <- [1 .. n], mod n x == 0]
perfeitos :: Int -> [Int]
perfeitos m = [x | x <- [1 .. m], x == sum (init (fatores x))]
-- o init pega todos os elementos menos o ultimo, foi usado para excluir m da lista.