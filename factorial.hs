fact n = if n == 0 then 1 else n * fact(n-1)

gcd1 :: Integral a => a -> a -> a
gcd1 a 0 = a
gcd1 a b = gcd1 b (a `mod` b)

extendedEuclid :: Integral a => a -> a -> (a, a, a)
extendedEuclid a 0 = (a, 1, 0)
extendedEuclid a b = (d, t, s - (a `div` b) * t)
  where (d, s, t) = extendedEuclid b (a `mod` b)

solveDiophantine :: Integral a => a -> a -> a -> Maybe (a, a)
solveDiophantine a b c =
  let (d, x, y) = extendedEuclid a b
  in if c `mod` d == 0
      then Just (x * (c `div` d), y * (c `div` d))
      else Nothing