evaluarDescuento :: Int -> String
evaluarDescuento n  
    | n < 0 = error "Edad no valida"
    | n <= 12 = "Descuento Ninos: 50%"
    | n >= 65 && n <= 120 = "Descuento Adulto Mayor: 40%"
    | otherwise = "Precio regular"

main :: IO()
main = do
    putStrLn "Ingrese una edad"
    input <- getLine
    let n = read input :: Int

    putStrLn("Su descuento es: " ++ show(evaluarDescuento n))