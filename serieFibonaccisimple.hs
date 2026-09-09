fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n-1) + fibonacci(n-2)

main :: IO()
main = do
    putStrLn "Ingrese un numero"
    input <-getLine
    let n = read input :: Int

    putStrLn ("La serie fibonacci del numero es: " ++ show(fibonacci n))