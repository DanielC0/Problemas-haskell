data Term = Const String deriving Show
type Termino = Term


esMayorEdad :: Termino -> Bool
esMayorEdad (Const "Juan") = True
esMayorEdad _ = False

main :: IO()
main = do

    putStrLn "Ingrese un nombre: "
    input <- getLine
    
    let nombre = Const input
    let resultado = esMayorEdad nombre

    if resultado == True
        then putStrLn "Es mayor de edad"
        else putStrLn "No es mayor de edad"

  