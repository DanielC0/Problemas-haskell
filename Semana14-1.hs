type Atomo = String
data Clausula = Atomo :- [Atomo] -- Constructor infijo: Cabeza :- Cuerpo
type BC = [Clausula]


-- Ejemplo de base de conocimiento
bc :: BC
bc = [ "p" :- ["q", "r"],
       "q" :- ["s"],
       "r" :- [],
       "s" :- [] ]

cabeza :: Clausula -> Atomo
cabeza (a :- b) = a


cuerpo :: Clausula -> [Atomo]
cuerpo (a :- b) = b


buscarClausula :: Atomo -> BC -> Maybe Clausula
buscarClausula a [] = Nothing
buscarClausula a (c:cs)
    | cabeza c == a = Just c
    | otherwise = buscarClausula a cs   


resolver :: Atomo -> BC -> Bool
resolver a bc = case buscarClausula a bc of
     Nothing -> False
     Just c -> all (`resolver` bc) (cuerpo c)



main :: IO ()
main = do
    -- `consulta`: átomo que queremos probar contra la BC
    --let consulta = "q"
    putStrLn ("Diga el elemento a buscar")
    consulta  <- getLine
    
    if resolver consulta bc
        then putStrLn $ "La consulta '" ++ consulta ++ "' es verdadera."
        else putStrLn $ "La consulta '" ++ consulta ++ "' es falsa."
    
    putStrLn "Presione una tecla para finalizar."   
    _ <- getLine
    return ()