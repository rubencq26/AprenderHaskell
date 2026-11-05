-- Ejercicio 2: comprobar si la suma de los valores absolutos es par.

main :: IO()
main = do
    print (sumaPar 3 4)

sumaPar :: Int -> Int -> Bool
sumaPar a b = even (abs (a + b))