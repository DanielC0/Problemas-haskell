factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

sucesor :: Int -> Int
sucesor n = n + 1

main :: IO()
main = do
    putStrLn "Ingrese un numero: "
    input <- getLine
    let n = read input :: Int
    let resultado = sucesor n
    let factorialResultado = factorial resultado

    putStrLn ("El numero sucesor es: " ++show(resultado))
    putStrLn ("El factorial del numero sucesor es: " ++ show(factorialResultado))