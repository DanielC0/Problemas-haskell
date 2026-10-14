duplicarResto :: [Int] -> [Int]
duplicarResto [] = []
duplicarResto lista = [x * 2 | x <- tail lista]

main :: IO()
main = do
    putStrLn "Ingrese una lista por espacios: "
    input <- getLine
    let lista = map read(words input) :: [Int]

    putStrLn("El resultado es: " ++ show(duplicarResto lista))

    

