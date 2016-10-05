--palindromic number
--9009 = 91 × 99.

--Find the largest palindrome made from the product of two 3-digit numbers.

flatmap _ [] = []  
flatmap f (x:xs) = f x ++ flatmap f xs

readx n = if n < 10 then [n]  else [mod n 10] ++ readx (div n 10)

isPal n = let readn = readx n in readn == reverse readn

a_s = filter (\x -> mod x 10 /= 0) [999, 998..101]
b_s = filter (\x -> mod x 10 /= 0) [999, 998..101]

xx = maximum $ filter isPal $ flatmap (\x -> map (\y -> y * x) b_s ) a_s 

main = print xx