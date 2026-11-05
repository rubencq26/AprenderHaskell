-- Comentario de una linea

{- Comentario en
bloque -}

main :: IO()
main = do
    putStrLn (show(2 + 5))
    putStrLn (show(3 * 10))
    putStrLn (show(5 / 2))
    -- Números negativos SIEMPRE entre PARENTESIS
    putStrLn (show((-4) ^ 3))
    putStrLn (show(True && False))
    putStrLn (show(True || False))
    putStrLn (show(not True))
    putStrLn (show(1 == 2))
    putStrLn (show(1 /= 2))
    putStrLn (show(1 < 2))
    putStrLn (show(1 > 2))
    putStrLn (show(1 <= 2))
    putStrLn (show(min 1 2))
    putStrLn (show(max 1 2))
    putStrLn (show(factorial 5))
    putStrLn (show(esMayorEdad 5))
    putStrLn (show(esMayorEdad 18))

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial(n - 1)

-- Condicional
esMayorEdad :: Integer -> Bool
esMayorEdad n = if n >= 18 then True else False

{- TIPOS PRIMITIVOS BÁSICOS
Integer
Float
Double
Bool
Char
String
-}