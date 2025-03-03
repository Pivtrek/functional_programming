evenNum xs = foldr (\acc x -> if x `mod` 2 == 0 then acc + 1 else acc) 0 xs
