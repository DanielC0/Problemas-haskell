factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial(n-1)

main :: IO()
main = do
    putStrLn "Ingrese un numero"
    input <-getLine
    let n = read input :: Int

    putStrLn("El factorial del numero que ingreso es: " ++ show(factorial n))