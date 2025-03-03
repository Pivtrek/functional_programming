filter p = concat.map box
        where box x
                | p x = [x]
                | otherwise = []