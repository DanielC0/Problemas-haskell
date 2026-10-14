listaProgreso :: Int -> [Int]
listaProgreso n 
    | n <= 1 = [1]
    | otherwise = n : listaProgreso(n-3)

main :: IO()
main = do
    putStrLn "Ingrese un numero: "
    input <- getLine
    let numero = read input :: Int

    putStrLn ("El resultado es: " ++ show(listaProgreso numero))

    