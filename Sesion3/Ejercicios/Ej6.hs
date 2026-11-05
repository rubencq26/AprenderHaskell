-- Ejercicio 6: define mcd3 :: Integer -> Integer -> Integer -> Integer que calcule el máximo común divisor de tres números usando gcd.
main :: IO()
main = do
    print (mcd3 12 18 24)


mcd3 :: Integer -> Integer -> Integer -> Integer
mcd3 a b c = gcd (gcd a b) c