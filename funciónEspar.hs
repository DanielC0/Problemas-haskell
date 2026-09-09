esPar :: Int -> Bool
esPar n = n `mod` 2 == 0

main :: IO()
main = do
    putStrLn "Ingrese un numero"
    input <- getLine
    let n = read input :: Int

    putStrLn("El numero que ingresó es par?: " ++show(esPar n)) 

    
    
