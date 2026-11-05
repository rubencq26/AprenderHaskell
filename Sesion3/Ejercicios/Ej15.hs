-- Ejercicio 15: escribe un programa que pida una frase y muestre: ● ● La frase tal cual. La longitud de la frase usando length.

main :: IO()
main = do
    putStrLn "Introduzca una frase"
    linea <- getLine
    putStrLn linea
    print(length linea)