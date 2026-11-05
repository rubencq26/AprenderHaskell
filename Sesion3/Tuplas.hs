main :: IO()
main = do
    let tupla = (1, True, "Hola Mundo")
    putStrLn (show tupla)

{-
OPERACIONES UTILES CON TUPLAS
fst: obtiene el primer elemento de una 2-tupla.
    ghci> fst (1, 2) -- Devuelve 1
snd: obtiene el segundo elemento de una 2-tupla.
    ghci> snd (1, 2) -- Devuelve 2

Desempaquetado:
    ghci> let (uno, dos) = (1, 2)
    ghci> print(uno) -- Muestra 1
    ghci> print(dos) -- Muestra 2
-}