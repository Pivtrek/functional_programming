fact n = if n == 0 then 1 else n * fact(n-1)

approx n = foldl (\acc x -> acc + (1 / (fact x)) ) 0 [1..n]


--fac1 n = 1/(foldl1 (*) 1 [1..n])
--approx1 n = foldr1 (+) 1 []
