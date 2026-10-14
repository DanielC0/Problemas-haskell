filtrarCodigoImpar :: [Int] -> [Int]
filtrarCodigoImpar lista = filter odd lista

main :: IO()
main = do
    putStrLn "Ingrese la lista de codigos: "
    input <- getLine
    let lista = map read(words input) :: [Int]

    putStrLn ("La lista de codigos impares son: " ++ show(filtrarCodigoImpar lista))

    