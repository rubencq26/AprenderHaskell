main :: IO()
main = do
    -- Envia un caracter a la salida
    putChar 'a'
    -- Envia un String a la salida Sin salto de linea final
    putStr "Hola mundo"
    -- Envia un String y un salto de linea
    putStrLn "Hola mundo"
    -- muestra un valor (putStrLn + show)
    print (10 + 2)
    -- lee un caracter desde la entrada
    putStrLn "Introduce un Caracter"
    caracter <- getChar
    _ <- getChar -- Saca el '\n' del buffer de entrada
    -- Lee una linea entera
    putStrLn "Introduzca una linea"
    linea <- getLine
    putStrLn linea
    -- getContents lee todo con saltos de lineas incluidos
    -- devuelve un valor como String
    entrada <- return (linea, " ", caracter)
    print entrada
    print(comparacion 5 3)

comparacion :: Integer -> Integer -> String
comparacion x y = case compare x y of
    LT -> show x ++ " es menor que " ++ show y
    EQ -> show x ++ " es igual que " ++ show y
    GT -> show x ++ " es mayor que " ++ show y

{-
-- FUNCIONES BASICAS --
odd: verifica si un número entero es impar.
even: verifica si un número entero es par.
gcd: calcula el máximo común divisor entre dos enteros.
lcm: calcula el mínimo común múltiplo entre dos enteros.
abs: calcula el valor absoluto.
signum: calcula el signo de un número (-1, 0, 1).
substract: calcula la inversa (b – a).
-}