counter1 :: (Num a) => a -> a
counter1 x = (\y -> y + 2) ((\y -> y + 3) x)

main = print $ counter1 3
