main :: IO()
main = do
    contenido <- readFile "entrada.txt"
    let lineas = length (lines contenido)
    writeFile "salida.txt" contenido
    appendFile "salida.txt" "[COPY]"
    putStrLn ("Archivo copiado, lineas: " ++ show lineas)