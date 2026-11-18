data Regla = Regla
    { cuerpo :: [String]    
    , cabeza :: Maybe String 
    } deriving (Show, Eq)
    
aplicable :: [String] -> Regla -> Bool
aplicable hechos (Regla condiciones _) = all (`elem` hechos) condiciones 

inferir :: [String] -> [Regla] -> [String]
inferir hechos reglas =
    [ h | r@(Regla _ (Just h)) <- reglas  -- Selecciona reglas con conclusión 
        , aplicable hechos r              -- Filtra las que cumplen sus premisas 
        , h `notElem` hechos ]    


r1 = Regla ["soleado"] (Just "Calor")
r2 = Regla ["calor"] (Just "helado")
r3 = Regla ["frio"] (Just "cafe")
r4 = Regla ["Viento"] (Just "Despeine")

main :: IO()
main = do

    putStrLn("regla 1: " ++ show r1)
    putStrLn("regla 2: " ++ show r2)
    putStrLn("regla 3: " ++ show r3)
    putStrLn("regla 4: " ++ show r4)


    putStrLn "Ingrese un hecho inicial: "
    hechoInicial <- getLine

    let hechosIniciales = [hechoInicial]

    let resultado = inferir hechosIniciales [r1,r2,r3,r4]

    putStrLn("El resultado de la inferencia es: " ++ show(resultado))
    


