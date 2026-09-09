evaluarRango :: Int -> String
evaluarRango n  
    | n > 100 =  "Alto"
    | n < 0 = error "Negativo"
    |otherwise =  "Normal"

main :: IO()
main = do
    putStrLn "Ingrese su monto"
    input <- getLine
    let n = read input :: Int

    putStrLn ("El rango seleccionado es: " ++ show(evaluarRango n))