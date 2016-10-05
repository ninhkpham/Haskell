--2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

--What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
import Data.List

ns = [2..20]

fil [x] = [x]
fil (x:xs) = [x] ++ fil (map (\t -> if mod t x == 0 then div t x else t) xs) 

main = do
    --print ns 
    --print $ fil ns
    print $ product $ fil ns    