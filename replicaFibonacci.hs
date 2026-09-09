fibonacci :: Int -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n-1) + fibonacci(n-2)

serienumeros :: Int -> [Integer]
serienumeros n = [fibonacci x | x <- [0..n]]

main :: IO()
main = do
    putStrLn "Ingrese hasta que numero quiere ver"
    input <- getLine
    let n = read input :: Int

    putStrLn("La serie es: " ++ show(serienumeros n))