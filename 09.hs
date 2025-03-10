-- Definición de map2
map2 :: (a -> b -> c) -> [a] -> [b] -> [c]
map2 _ [] _ = [] -- Si la primera lista está vacía, la lista resultante es vacía
map2 _ _ [] = [] -- Si la segunda lista está vacía, la lista resultante es vacía
map2 f (x : xs) (y : ys) = f x y : map2 f xs ys -- Aplica f a los primeros elementos y recursivamente a los restos

-- Ejemplo de uso
main :: IO ()
main = do
  -- Ejemplo 1: Sumamos los elementos correspondientes de dos listas
  let result1 = map2 (+) [1, 2, 3] [4, 5, 6]
  print result1 -- Resultado esperado: [5, 7, 9]

  -- Ejemplo 2: Multiplicamos los elementos correspondientes de dos listas
  let result2 = map2 (*) [1, 2, 3] [4, 5]
  print result2 -- Resultado esperado: [4, 10]

  -- Ejemplo 3: Concatenamos las cadenas de texto correspondientes
  let result3 = map2 (++) ["a", "b"] ["c", "d"]
  print result3 -- Resultado esperado: ["ac", "bd"]

  -- Ejemplo 4: Si las listas tienen longitudes diferentes, se ignoran los elementos adicionales
  let result4 = map2 (+) [1, 2, 3] [4, 5]
  print result4 -- Resultado esperado: [5, 7]
