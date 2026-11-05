-- Ejercicio 10: define intercambia :: (a, b) -> (b, a) sin usar swap. Hazlo por desestructuración.

main :: IO()
main = do
    print (intercambia (1, "hola"))

intercambia :: (a, b) -> (b, a)
intercambia (x, y) = (y, x)