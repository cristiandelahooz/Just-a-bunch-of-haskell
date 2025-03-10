sorted :: [Int] -> Bool
sorted [] = True -- Una lista vacía siempre está ordenada.
sorted [x] = True -- Una lista con un solo elemento también está ordenada.
sorted (x : y : xs)
  | x <= y = sorted (y : xs) -- Si el primer elemento es menor o igual que el segundo, continúa con el resto de la lista.
  | otherwise = False -- Si el primer elemento es mayor que el segundo, la lista no está ordenada.

main :: IO ()
main = print $ sorted [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 9] -- False
