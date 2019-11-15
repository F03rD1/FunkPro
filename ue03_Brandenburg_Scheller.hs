{- Frederick Brandenburg, Ferdinand Markward Scheller
Tutoriumsnummer: 03 -}

-- AUFGABE 4

fromDecTo :: Int -> Int -> [Int]
fromDecTo b num = reverse (dec2 b num)

dec2 :: Int -> Int -> [Int]
dec2 b num | b<1 || b>9 = error "Base must be between 0 and 10!"
           | num<1 = []
           | otherwise = (mod num b) : dec2 b (div num b)

{- Testlauf

fromDecTo 5 555
> [4,2,1,0]
-}
