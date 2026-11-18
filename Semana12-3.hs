type Nombre = String
-- Definimos los sujetos (Términos)
data Termino = Var Nombre | Const Nombre deriving (Show, Eq)
-- Definimos las oraciones (Fórmulas)
data Formula = Pred Nombre [Termino]
    | Conj Formula Formula
    | Neg Formula
    deriving (Show, Eq)


-- Regla Semántica: Solo el objeto "Admin" tiene permisos de
tienePermisoEscritura :: Termino -> Bool
tienePermisoEscritura (Const "Admin") = True
tienePermisoEscritura _ = False


-- Función de Evaluación Semántica Recursiva
evaluar :: Formula -> Bool
evaluar (Pred "Escritura" [t]) = tienePermisoEscritura t
evaluar (Conj f1 f2)= evaluar f1 && evaluar f2 --Implementación perezosa
evaluar (Neg f) = not (evaluar f)
evaluar _ = False -- Caso base de seguridad


-- Ejemplo de uso
main :: IO ()
main = do
    let admin = Const "Admin"
    let user = Const "User"

    let resultado = evaluar (Pred "Escritura" [admin])

    print $ admin

    if resultado == True
        then putStrLn "Si tiene permiso de escritura"
        else putStrLn "No tiene permiso de escritura"


    -- Evaluamos si Admin tiene permiso de escritura
    putStrLn "Evaluando permisos de escritura:"
    putStrLn $ "Admin tiene permiso de escritura: " ++ show(evaluar (Pred "Escritura" [user])) -- Debería ser True