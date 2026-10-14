procesarPalabra :: [String] -> [(String, Int)]        -- OBTENER PALABRA Y SU LONGITUD
procesarPalabra lista = [(x, length x) | x <- lista, length x > 3]

main :: IO()
main = do
    putStrLn "Ingrese la lista de palabras"
    input <- getLine 
    let lista = words input

    putStrLn("El resultado es: " ++ show(procesarPalabra lista))