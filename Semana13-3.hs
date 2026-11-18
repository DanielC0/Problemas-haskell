import GHC.Internal.System.Posix.Internals (puts)
-- | Definición de la estructura de una Regla en el sistema
-- Utiliza un registro para separar condiciones (cuerpo) de la consecuencia (cabeza)

data Regla = Regla
    { cuerpo :: [String]    
    , cabeza :: Maybe String 
    } deriving (Show, Eq)


aplicable :: [String] -> Regla -> Bool
aplicable hechos (Regla condiciones _) = all (`elem` hechos) condiciones

--Definicion de la base de conocimientos

reglaAcceso :: Regla
reglaAcceso = Regla ["admin", "token"] (Just "acceso")

hechoAdmin :: Regla
hechoAdmin = Regla [] (Just "admin")

hechoToken :: Regla 
hechoToken = Regla [] (Just "token")

evaluacion = aplicable ["admin", "token"] reglaAcceso


main :: IO()
main = do


    putStrLn "PROBANDO EVALUACION"

    putStrLn("Son las credenciales validas?: " ++ show evaluacion)

