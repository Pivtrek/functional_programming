data rf2 r = rf2 r r deriving (Show)

data Vector a = Vector a a  deriving (Show) 
  
vplus :: (Num t) => Vector t -> Vector t -> Vector t 
(Vector i j) `vplus` (Vector l m) = Vector (i+l) (j+m)  
  
vectMult :: (Num t) => Vector t -> Vector t -> Vector t
(Vector i j) `vectMult` m = Vector (i*m) (j*m)   
  
scalarMult :: (Num t) => Vector t -> Vector t -> Vector t  
(Vector i j) `scalarMult` (Vector l m) = i*l + j*m 

class VectorSpace v where
  vnull :: Num a=> v a -> v a -> v a
  vmult :: Num a=> v a -> v a -> v a
  vadd :: Num a=> v a -> v a -> v a
  (>/) :: Fractional a=> v a -> v a -> v a
  (>.) :: Num a=> v a -> v a -> a

data Vector a = Vec { vecList :: [a] }
              deriving Show

instance GeomVector Vector where
  vnull (Vec u) (Vec v) = Vec $ zipWith (+) u v
  vmult (Vec u) (Vec v) = Vec $ zipWith (-) u v
  vadd (Vec u) (Vec v) = Vec $ zipWith (*) u v
  (>/) (Vec u) (Vec v) = Vec $ zipWith (/) u v
  (>.) u v = sum $ vecList (u >* v)
