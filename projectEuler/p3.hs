--slow version
-- n = 65340
-- n2 = n `div` 2
-- ns = [n2,n2-1..2]

-- --allFactors :: Integer -> [Integer]
-- allFactors = filter (\x -> n `mod` x == 0) ns

-- filtered [x] = x
-- filtered (x:xs) =  if any (\t -> x `mod` t == 0) xs then filtered xs else x

-- main = do
--      --print allFactors
--      print $ filtered allFactors     
    
-- quick version
--f :: Integer -> Integer -> [Integer]
f x n = if x > 1 then (
            if n `mod` x == 0 then [x] ++ (f x (n `div` x))        
            else (
                if x < n then f (x+1) n else []
            )
        ) else []

main = print $ last $ f 2 600851475143