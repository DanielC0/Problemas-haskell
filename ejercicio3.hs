analizarStock :: String -> String
analizarStock cadena
    | len == 0 = "Vacio"
    | len < 5 = "Critico"
    | otherwise = "Optimo"
    where
        len = length cadena

main :: IO()
main = do
    putStrLn "Ingrese una palabra"
    input <- getLine
    let palabra = input    -- cuando solo es analizar una palabra simple

    putStrLn("El estado de la palabra es: " ++ show(analizarStock palabra))