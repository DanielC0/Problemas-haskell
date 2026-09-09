esMayorDeEdad :: Int -> String
esMayorDeEdad edad =
    if edad >= 18
        then error "Es mayor de edad"
        else "No es mayor de edad"

main :: IO ()
main = do
    putStrLn "Ingrese su edad:"
    input <- getLine
    let edad = read input :: Int
    putStrLn ("¿Es mayor de edad?: " ++ show (esMayorDeEdad edad))