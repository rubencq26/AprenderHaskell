-- Ejercicio 4: definir una función maximoDouble que devuelva el mayor de los 5 números pasados por parámetro y cuyo resultado sea del tipo Double.
main :: IO()
main = do 
    print (maximoDouble 1.2 3.4 5.6 7.8 9.0)


maximoDouble :: Double -> Double -> Double -> Double -> Double -> Double
maximoDouble a b c d e = maximum [a, b, c, d, e]