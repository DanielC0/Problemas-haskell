areaTriangulo :: Integer -> Integer -> Integer
areaTriangulo base altura = base * altura

main :: IO()
main = do
    putStrLn "Ingrese la base."
    inputBase <- getLine
    putStrLn "Ingrese la altura."
    inputAltura <- getLine

    let base = read inputBase :: Integer
    let altura = read inputAltura :: Integer

    putStrLn ("El resultado del área es: " ++ show(areaTriangulo base altura))