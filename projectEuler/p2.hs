fib :: Int -> Int
fourM = 40 --4000000
fib 0 = 1
fib 1 = 1
fib n = let fn = fib (n - 1) + fib (n - 2) in 
    (if fn > fourM then fourM else fn)
    
xs = filter (\x -> x < fourM && x `mod` 2 == 0) $ map fib [1..fourM]
main = print $ sum xs
--1 1 2 3 5 8 13 21 34
