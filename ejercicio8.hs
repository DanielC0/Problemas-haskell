filtrarPalabra :: [String] -> [String]
filtrarPalabra lista = filter(\p -> length p > 5) lista

main :: IO()
main = do
    putStrLn "Ingrese una lista de palabras: "
    input <- getLine
    let lista = words input

    putStrLn("Las palabras con mas de 5 letras son: " ++ show(filtrarPalabra lista))