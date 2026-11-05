{-
Ejercicio 7: indica el tipo de cada expresión, si da error y, en ese caso, analiza por qué: 
5 ^ 3 
5 ^^ 3 
5 ** 3 
(-5) ^^ 3 
2 ** 0.5
-}

main :: IO()
main = do
    print (5 ^ 3) -- Integer
    print (5 ^^ 3) -- Integer
    print (5 ** 3) -- Double
    print ((-5) ^^ 3) -- Integer
    print (2 ** 0.5) -- Double