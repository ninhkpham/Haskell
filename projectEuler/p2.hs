f :: Int -> Int
maxF = 4000000
f 0 = 1
f 1 = 1
f n = f (n - 1) + f (n - 2)

xs = filter (\x -> x `mod` 2 == 0) $ takeWhile (<maxF) $ map f [1..maxF]

main = do 
    --print xs 
    print $ sum xs
