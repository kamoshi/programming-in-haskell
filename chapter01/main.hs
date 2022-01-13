-- 3
product_ [] = 0
product_ [x] = x
product_ (x:xs) = x * product_ xs

-- 4
qsort [] = []
qsort (x:xs) = qsort bigger ++ [x] ++ qsort smaller
    where
        smaller = [a | a <- xs, a < x]
        bigger = [b | b <- xs, b >= x]

main = do
    print "Hello World!"
    print $ product_ [2, 3, 4]
    print $ qsort [5, 2, 4, 1, 9, 4, 7]
