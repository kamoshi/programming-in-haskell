-- 1
halve xs = (take (length xs `div` 2) xs, drop (length xs `div` 2) xs)

-- 2
third' xs = head $ tail $ tail xs
third'' xs = xs !! 2
--third''' (_:_:x:_) = x

-- 3
safetail' xs = if null xs then [] else tail xs
safetail'' xs
      | null xs = []
      | otherwise = tail xs
safetail''' [] = []
safetail''' (_:xs) = xs

-- 4
(|||) True _ = True
(|||) False y = y

(||||) x y = if x then x else y

-- 5
(&&&) x y = if x then if y then True else False else False

-- 6
(&&&&) True b = if b then True else False 
(&&&&) _ _ = False


main = do
      let xs = [1..6]
      print $ halve xs
      print $ third' xs
      print $ third'' xs
      --print $ third''' xs
      print $ safetail' xs
      print $ safetail'' xs
      print $ safetail''' xs

