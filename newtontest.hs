func x = cos x - x

func' x = ((-(sin x)) - 1)

newt :: (Fractional a, Ord a) => (a -> a) -> (a -> a) -> a -> a
newt f f' x
    | (abs (f x)) < eps = x
    | otherwise = newt f f' (x - (f x / f' x))
  where
    eps = 0.01