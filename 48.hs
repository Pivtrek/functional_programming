zipWith (*) [1,2,3] [1,2,3]

func xs = foldl (\acc x -> acc + (zipWith (*) xs (func1 xs) )) 0 xs


func1 xs = (\x -> if xs!!n)
