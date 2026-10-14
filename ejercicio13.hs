procesarLongitud :: [String] -> [String]
procesarLongitud lista = filter (\x -> length x > 3) lista

main :: IO()
main = do

    putStrLn "Ingrese la lista de palabras: "
    input <- getLine
    let lista = words input

    putStrLn("Las palabras con mas de tres letras son: " ++ show(procesarLongitud lista))

