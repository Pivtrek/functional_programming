--Zadanie 1

data BTree a = L a | N a (BTree a) (BTree a)

instance (Eq a) => Eq (Btree a1) (Btree a2) where 
    Eq (BTree a1) (Btree a2) = if a1 == a2 then True  

instance (Show a) => Show (Btree a) where
    show (L x) = show x
    show (N lt rt) =  "<" ++ show lt ++ "|" ++ showrt ">"

instance Functor BTree where
    fmap f (L x) = L (f x)
    fmap f (N lt rt) = N (fmap f lt) (fmap f rt)


--Zadanie 2

func x = cos x - x

func' x = ((-(sin x)) - 1)

newt :: (Fractional a, Ord a) => (a -> a) -> (a -> a) -> a -> a
newt f f' x
    | (abs (f x)) < eps = x
    | otherwise = newt f f' (x - (f x / f' x))
  where
    eps = 0.01

-- Dla wywołania new func func' 1 mamy rozwiązanie 0.7391128909113617



