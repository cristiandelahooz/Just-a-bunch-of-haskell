-- Definición para encontrar el triplete (a, b, c)
main :: IO ()
main = do
  let (x, y, z) = head [(a, b, c) | c <- [1 .. 25], b <- [1 .. c], a <- [1 .. b], a ^ 2 + b ^ 2 == c ^ 2, a + b + c == 40]
  let r = x + y + z
  print r
