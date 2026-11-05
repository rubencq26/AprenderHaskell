-- Ejercicio 5: define esPar :: Integer -> Bool de dos formas distintas: una con even, otra con mod.
main :: IO()
main = do 
    print (esParEven 4)
    print (esParEven 5)
    print (esParMod 4)
    print (esParMod 5)

esParEven :: Integer -> Bool
esParEven n = even n

esParMod :: Integer -> Bool
esParMod n = mod n 2 == 0