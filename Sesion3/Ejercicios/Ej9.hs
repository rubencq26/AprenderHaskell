{- Ejercicio 9: indica si las siguientes expresiones compilan o no, y por qué: 
1 + 2 
1 + 2.5 
True + 1 
"hola" == "adios" 
5 < 'a'
-}

main :: IO()
main = do
    print (1 + 2) -- compila, resultado: 3
    print (1 + 2.5) -- compila, resultado: 3.
    --print (True + 1) -- no compila, no se puede sumar un Bool y un Int
    print ("hola" == "adios") -- compila, resultado: False
    --print (5 < 'a') -- no compila, no se puede comparar un Int