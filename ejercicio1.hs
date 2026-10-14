medirTemp :: Double -> String
medirTemp t
    | t < 15 = "Frio"
    | t <= 25 = "Templado"
    | otherwise = "Calido"

main :: IO()
main = do
    putStrLn "Ingrese una temperatura"
    input <- getLine
    let n = read input :: Double

    putStrLn("El resultado es: " ++ show(medirTemp n))

 