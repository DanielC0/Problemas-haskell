infix 5 :-
data Rule = String :- [String]

-- Base de Conocimiento (BC): lista de reglas
type BC = [Rule]

-- Sinónimo para mayor claridad semántica
type Goal = String

bcRed :: BC
bcRed =
    [ "acceso_total_juan" :- ["credenciales_admin_juan", "servidor_activo"]
    , "credenciales_admin_juan" :- []
    , "servidor_activo" :- []
    ]

consultar :: BC -> Goal -> Bool
consultar bc goal = probar bc goal []

probar :: BC -> Goal -> [Goal] -> Bool
probar _ goal visitados
    | goal `elem` visitados = False
probar bc goal visitados =
    any coincide bc
    where
    coincide (cabeza :- cuerpo) =
        cabeza == goal &&
        all (\subgoal -> probar bc subgoal (goal : visitados)) cuerpo


main :: IO ()
main = do
    let consulta = "acceso_total_pedro"
    if consultar bcRed consulta
        then putStrLn $ "La consulta '" ++ consulta ++ "' es verdadera."
        else putStrLn $ "La consulta '" ++ consulta ++ "' es falsa."
    
    putStrLn "Presione una tecla para finalizar."   
    _ <- getLine
    return ()
