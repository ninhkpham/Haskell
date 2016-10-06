dbl x = x * x
ns = [1..100]

dbls = sum $ map dbl ns

dbl2 = dbl $ sum ns

main = print $ dbl2 - dbls

