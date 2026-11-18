import GHC.Internal.System.Posix.Internals (puts)
-- | Definición de la estructura de una Regla en el sistema
-- Utiliza un registro para separar condiciones (cuerpo) de la consecuencia (cabeza)
data Regla = Regla
    { cuerpo :: [String]    -- Premisas: Lista de hechos que deben ser ciertos
    , cabeza :: Maybe String -- Conclusión: Hecho derivado (o 'Nothing' si es restricción)
    } deriving Show



hecho :: Regla
hecho = Regla [] (Just "SocratesMortal")


aplicable :: [String] -> Regla -> Bool
aplicable hechos (Regla cuerpo _) = all(`elem` hechos) cuerpo 


-- Motor de inferencia

inferir :: [String] -> [Regla] -> [String]
inferir hechos reglas =
    [ h | r@(Regla _ (Just h)) <- reglas  
        , aplicable hechos r              
        , h `notElem` hechos ]




main :: IO()
main = do

    let hechosiniciales = []
    let reglas = [hecho]

    let nuevoshechos = inferir hechosiniciales reglas

    putStrLn "Demostracion de ejercicio: "
    
    print hecho
    print nuevoshechos