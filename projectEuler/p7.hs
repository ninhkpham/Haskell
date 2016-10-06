-- isPrime 2 = True
-- isPrime n = all (\x -> n `mod` x /= 0  ) [2..(n `div` 2)]
--
-- factorial n = product [1..n]

xs 22 = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79]

xs n = let k = xs (n - 1) in k ++ ( if all (\x -> n `mod` x /= 0  ) k then [n] else [] )

xss c n = let t = xs c in if length t == n then t else xss (c + 1) n

nth = 44 --10000

main = do
  print $ xss 22 nth
  --print $ last $ xss 22 nth
