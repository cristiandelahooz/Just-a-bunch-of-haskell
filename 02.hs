data SF a = SS a | FF
  deriving (Show, Eq)

-- Definición de myhead
myhead :: [a] -> SF a
myhead [] = FF
myhead (a : as) = SS a

-- Definición de mytail
mytail :: [a] -> [a]
mytail [] = []
mytail (_ : xs) = xs

-- Definición de myzip
myzip :: [a] -> [b] -> [(a, b)]
myzip [] _ = []
myzip _ [] = []
myzip (a : as) (b : bs) = (a, b) : (myzip as bs)

-- Definición de mystery
mystery :: (Eq a) => [a] -> SF a
mystery xs = myhead [x | (x, y) <- myzip xs (mytail xs), x == y]

-- Llamada al resultado
main :: IO ()
main = print $ mystery [1, 2, 3, 4, 5, 6, 6, 7]
