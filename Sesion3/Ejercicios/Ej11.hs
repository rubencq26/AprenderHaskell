--Ejercicio 11: define sumaComponentes :: (Integer, Integer) -> Integer que sume los dos elementos.
main :: IO()
main = do
    print ( sumaComponentes (10, 20))

sumaComponentes :: (Integer, Integer) -> Integer
sumaComponentes (x,y) = x + y