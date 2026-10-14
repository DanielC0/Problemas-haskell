procesarCola :: [Double] -> [Double]
procesarCola [] = []
procesarCola lista = (head sublista + 10.0) : tail sublista
    where
        sublista = tail lista


main :: IO()
main = do
    putStrLn "Ingrese una lista por espacios: "
    input <- getLine
    let lista = map read(words input) :: [Double]

    putStrLn("El resultado es: " ++ show(procesarCola lista))

    