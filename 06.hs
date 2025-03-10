f :: Int -> Int -> Int
f x y = x + y
g :: Int -> Int
g = f 2
main = print (g 3)
