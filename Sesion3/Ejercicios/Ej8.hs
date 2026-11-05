-- Ejercicio 8: define esDivisible :: Integer -> Integer -> Bool que indique si el primero es divisible por el segundo, usando mod o rem.
main :: IO()
main = do
    print (esDivisible 6 3)


esDivisible :: Integer -> Integer -> Bool
esDivisible a b = mod a b == 0