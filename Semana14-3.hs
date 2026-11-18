-- | Definición del operador infijo para las reglas (Cabeza :- [Premisas])
infix 5 :-
data Rule = String :- [String]

-- | Sinónimos de tipo para mayor claridad semántica
type BC = [Rule]
type Goal = String

-- | Motor recursivo para demostrar un objetivo evitando ciclos
probar :: BC -> Goal -> [Goal] -> Bool
probar _ goal visitados
    | goal `elem` visitados = False -- Si ya fue visitado, evita bucles infinitos[cite: 24, 25]
probar bc goal visitados =
    any coincide bc
    where
    coincide (cabeza :- cuerpo) =
        cabeza == goal && 
        all (\subgoal -> probar bc subgoal (goal : visitados)) cuerpo

consultar :: BC -> Goal -> Bool
consultar bc goal = probar bc goal []

bcSoporte :: BC
bcSoporte = 
    [ "falla_encendido" :- ["falla_energia"]
    , "falla_encendido" :- ["boton_roto"]
    , "falla_energia" :- ["sin_luz", "sin_bateria"]
    , "sin_luz" :- []
    , "sin_bateria" :- []
    ]

main :: IO ()
main = do
    let consulta = "falla_encendido"
    putStrLn $ "--- DIAGNÓSTICO DEL SISTEMA ---"
    putStrLn $ "Consultando si '" ++ consulta ++ "' se puede demostrar..."

    if consultar bcSoporte consulta
        then putStrLn $ "Resultado de la consulta: " ++ consulta ++ " Es verdadera"
        else putStrLn $ "Resultado de la consulta: " ++ consulta ++ " Es falsa"



