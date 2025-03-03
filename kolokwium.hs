--Zadanie 1

arithmetic xs = foldl (\acc x -> acc + (x/(length xs))) 0 xs
war xs = foldl (\acc x -> acc + (((x - (arithmetic xs))^2)/(length xs))) 0 xs

function1 xs = arithmetic (map war xs)
function2 xs = war (map arithmetic xs)

--Zadanie 2

ochoa x xs = foldl (\acc y -> acc + (x^(acc1))*(y), acc1 == acc1 + 1) 0 xs

--Nie wiedziałem do końca jak dodać 2 akumulator który przechowa index i
--Wartość acc1 powinna startować z wartością 1, pierwszy akumulator jest zajęty 
--na przechowywanie wartości sumy 


