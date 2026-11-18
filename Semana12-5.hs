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

esLlave :: Termino -> Bool
esLlave (Const "Gold") = True
esLlave _ = False

evaluarAdmin :: Formula -> Bool
evaluarAdmin (Pred "Admin" [t]) = esAdmin t
evaluarAdmin (Pred "Llave" [t]) = esLlave t
evaluarAdmin (Conj f1 f2) = evaluarAdmin f1 && evaluarAdmin f2

evaluarAdmin _ = False

main :: IO()
main = do

    putStrLn "Ingrese el usuario: "
    input1 <- getLine

    putStrLn "Ingrese la llave: "
    input2 <- getLine


    let formula1 = Pred "Admin" [Const input1]
    let formula2 = Pred "Llave" [Const input2]

  


    putStrLn("El usuario: " ++ show input1 ++ " Y la llave " ++ show input2 ++ " Son validas? " ++ show(evaluarAdmin formula1 && evaluarAdmin formula2))


