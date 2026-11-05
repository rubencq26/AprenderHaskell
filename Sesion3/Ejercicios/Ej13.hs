--Ejercicio 13: define desempaquetar :: (String, Integer, Bool) -> String que devuelva un mensaje como "José, 30 años, admin: True". Usa desestructuración de la tupla.
main :: IO ()
main = putStrLn (desempaquetar ("José", 30, True))

desempaquetar :: (String, Integer, Bool) -> String
desempaquetar (nombre, edad, admin) =  "" ++ nombre ++ ", " ++ show edad ++ " años, admin: " ++ show admin