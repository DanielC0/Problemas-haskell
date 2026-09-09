funcionPromedio :: Float -> Float -> Float -> Float
funcionPromedio n1 n2 n3 = (n1 + n2 + n3)/3

main :: IO()
main = do
    putStrLn "Ingrese la primera nota"
    numero1 <- getLine

    putStrLn "Ingrese la segunda nota"
    numero2 <- getLine

    putStrLn "Ingrese la tercera nota"
    numero3 <- getLine

    let n1 = read numero1 :: Float
    let n2 = read numero2 :: Float
    let n3 = read numero3 :: Float

    putStrLn ("El promedio de sus notas es: " ++show(funcionPromedio n1 n2 n3))