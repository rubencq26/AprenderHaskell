-- Ejercicio 14: escribe un programa que lea dos números (uno por línea) y muestre su suma, su producto y su división.
main :: IO()
main = do
    putStrLn "Introduzca un numero"
    linea <- getLine
    let a = read linea :: Double
    putStrLn "Introduzca un numero"
    linea <- getLine
    let b = read linea :: Double
    putStrLn ("Suma: " ++ show (a + b))
    putStrLn ("Producto : " ++ show (a * b))
    putStrLn ("Division: " ++ show (a / b))