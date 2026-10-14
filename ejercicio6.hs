paresHaciaAbajo :: Int -> [Int]
paresHaciaAbajo n
    | n <= 0 = [0]
    | odd n = parAbajo(n-1)
    | otherwise = n : parAbajo(n-2)
    where
        parAbajo x
            | x <=0 = [0]
            | otherwise = x : parAbajo(x-2)


main :: IO()
main = do
    putStrLn "Ingrese una nota"
    input <- getLine
    let numero = read input :: Int

    putStrLn("El resultado es: " ++ show(paresHaciaAbajo numero))