module Ex9 where
{-
QUESTAO 9
O produto escalar de duas listas de inteiros xs e ys de tamanho n é dado pelo produto dos inteiros em 
posições correspondentes.
Dica: Procure usar a função zip.
-}
produto :: Num a => [a] -> [a] -> a
produto l1 l2 = sum[a * b | (a, b) <- zip l1 l2]