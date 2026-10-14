filtrarNegativos :: [Double] -> [Double]
filtrarNegativos lista = filter(< 0.0) lista

main :: IO()
main = do
    putStrLn "Ingrese la lista: "
    input <- getLine
    let lista = map read(words input) :: [Double]

    putStrLn("Los saldos negativos son: " ++ show(filtrarNegativos lista))