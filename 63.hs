half1 n = if even n == True then ((n `div` 2)+1) else half1 (n-1)

function n = foldl (\acc x -> acc + (half1 x)) 0 [n,n-5..0]








