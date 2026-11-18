data Regla = Regla
    { cuerpo :: [String]    
    , cabeza :: Maybe String 
    } deriving (Show, Eq)


aplicable :: [String] -> Regla -> Bool
aplicable hechos (Regla condiciones _) = all (`elem` hechos) condiciones

reglaAcceso :: Regla
reglaAcceso = Regla ["Miguel", "Gold"] (Just "acceso")

evaluacion user pass = aplicable [user, pass] reglaAcceso


main :: IO()
main = do

    putStrLn "Ingrese un usuario: "
    user <- getLine

    putStrLn "Ingrese una clave: "
    pass <- getLine

    let resultado = evaluacion user pass

    if resultado == True
        then putStrLn "ACCESO CONCEDIDO"
        else putStrLn "ACCESO DENEGADO"


