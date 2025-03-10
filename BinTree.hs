data BinTree a
  = Empty
  | Node a (BinTree a) (BinTree a)
  deriving (Show)
treeFromList :: (Ord a) => [a] -> BinTree a
treeFromList [] = Empty
treeFromList (x : xs) =
  Node
    x
    (treeFromList (filter (< x) xs))
    (treeFromList (filter (> x) xs))
f :: BinTree Int -> [Int]
f Empty = []
f (Node x l r) = f l ++ [x] ++ f r

ls2 :: [Int]
ls1 = [10, 6, 3, 15, 8, 17, 12, 2, 23, 7, 13, 9, 5, 11, 14, 4, 18, 16, 20]
bt :: BinTree Int
bt = treeFromList ls1
ls2 = f bt
main :: IO ()
main = do
  print $ f (treeFromList [10, 6, 3, 15, 8, 17, 12, 2, 23, 7, 13, 9, 5, 11, 14, 4, 18, 16, 20]) !! 8
