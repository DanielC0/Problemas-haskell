numeros :: Integer -> [Integer]
numeros n =  [10..n]

main :: IO()
main = do
    putStrLn "Ingrese el limite de numeros"
    input <-getLine
    let n = read input :: Integer


    putStrLn("Los numeros hasta n son: " ++show(numeros n))