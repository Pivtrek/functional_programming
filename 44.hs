ssm :: Ord a => [a] -> [a]
ssm xs = foldr go [] where
        go x [] = [x]
        go x ms@(m:_)
        |x > m = x:ms
        |otherwise = ms