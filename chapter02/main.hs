-- 3
n = a `div` length xs 
    where
        a = 10
        xs = [1,2,3,4,5]

-- 4
last' xs = head $ reverse xs
last'' xs = xs !! (length xs - 1)

-- 5
init' xs = reverse $ tail $ reverse xs
init'' xs = take (length xs - 1) xs

main = do
    print n
    print $ last' [1..7]
    print $ last'' [1..7]
    print $ init' [1..7]
    print $ init'' [1..7]