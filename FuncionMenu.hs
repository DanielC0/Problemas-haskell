menuVenta :: Float -> IO()
menuVenta total = do

    putStrLn ("Cuenta actua: S/" ++ show total)
    putStrLn "1.Sumar Plato (s/25) | 2.Sumar Bebida (s/5) | 0.Pagar"
    opcion <-getLine
    case opcion of
        "1" -> menuVenta(total+25)
        "2" -> menuVenta(total+5)
        "0" -> putStrLn ("Gracias por su visita su total a pagar es: " ++show total)
        _ -> do
            putStrLn"Opcion invalida. Intente de nuevo"
            menuVenta total 


main :: IO ()
main = menuVenta 0
