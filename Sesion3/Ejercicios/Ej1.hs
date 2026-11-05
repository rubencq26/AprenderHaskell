-- Ejercicio 1: comprobar si un numero es a divisible b y por c.
main :: IO()
main = do
    print ( esDivisible 6 3 2)
    print ( esDivisible 6 3 4)

esDivisible :: Int->Int->Int->Bool
esDivisible a b c =
    if mod a b == 0 && mod a c == 0 then True else False



