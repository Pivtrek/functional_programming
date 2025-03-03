1 - prawdziwe bo zmienia na ujemne wartosc sumy 

foldr (-) 0 [1,2,3,4] = (1-(2-(3-(4-0)))) = -2

foldl (-) 0 [1,2,3,4] = ((((0-1)-2)-3)-4) = -10