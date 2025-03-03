nondec xs = and (map leq (zip xs (tail xs)))
    where leq (x , y) = x <= y
    

