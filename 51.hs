mean [] = 0
mean xs = sum xs / lentgth xs

f xs = (mean xs, fst(foldl(\(acc, m)x->(acc+(x-m)^2,m))(0,mean xs)xs))/length xs)

--how to write function that remove all duplicates from list?


