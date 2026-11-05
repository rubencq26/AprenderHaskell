-- Ejercicio 3: calcular el volumen de una esfera (V = 4/3·π·r3). [En Haskell, el número π se denota por “pi”)
main :: IO()
main = do 
    print (calcular_volumen_esfera 10)

calcular_volumen_esfera :: Float -> Float
calcular_volumen_esfera r = 4/3 * pi * r ^3
