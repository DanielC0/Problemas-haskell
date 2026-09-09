calcularPotencia :: Integer -> Integer -> Integer
calcularPotencia base exponente = base ^ exponente 

main :: IO()
main = do
    putStrLn "Ingrese la base"
    inputbase <- getLine
    putStrLn "Ingrese el exponente"
    inputexponente <- getLine
    let base = read inputbase :: Integer
    let exponente = read inputexponente :: Integer

    putStrLn ("El resultado de la potencia es: " ++ show(calcularPotencia base exponente))