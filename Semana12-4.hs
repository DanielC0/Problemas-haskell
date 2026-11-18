type Nombre = String
-- Definimos los sujetos (Términos)
data Termino = Var Nombre | Const Nombre deriving (Show, Eq)
-- Definimos las oraciones (Fórmulas)
data Formula = Pred Nombre [Termino]
    | Conj Formula Formula
    | Neg Formula
    deriving (Show, Eq)


esAdmin :: Termino -> Bool
esAdmin (Const "Admin01") = True
esAdmin _ = False


evaluarUsuario :: Formula -> Bool
evaluarUsuario (Pred "Admin" [t]) = esAdmin t
evaluarUsuario (Conj f1 f2) = evaluarUsuario f1 && evaluarUsuario f2
evaluarUsuario _ = False

main :: IO()
main = do

    putStrLn "Ingrese el primer Usuario: "
    input1 <- getLine

    putStrLn "Ingrese el segundo Usuario: "
    input2 <- getLine

    let formula1 = Pred "Admin" [Const input1]
    let formula2 = Pred "Admin" [Const input2]


    putStrLn("El usuario: " ++ input1 ++ " Es Admin? " ++ show(evaluarUsuario formula1))
    putStrLn("El usuario: " ++ input2 ++ " Es Admin? " ++ show(evaluarUsuario formula2))



