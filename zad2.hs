func x = cos x - x

func' x = ((-(sin x)) - 1)

newt :: (Fractional a, Ord a) => (a -> a) -> (a -> a) -> a -> a
newt f f' x
    | (abs (f x)) < eps = x
    | otherwise = newt f f' (x - (f x / f' x))
  where
    eps = 0.01

-- Dla wywołania new func func' 1 mamy rozwiązanie 0.7391128909113617

