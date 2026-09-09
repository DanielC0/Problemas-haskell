validarPedido :: Float -> String
validarPedido n =
    if n <= 0
        then error "Monto invalido"
    else if n > 100
        then "Plato Gourmet"
    else "Plato estandar"

main :: IO()
main = do
    putStrLn "Ingrese el monto"
    input <- getLine
    let n = read input :: Float

    putStrLn("El plato que pidio es: " ++show(validarPedido n)) 