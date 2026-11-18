type Nombre = String
data Termino = Var Nombre | Const Nombre deriving (Show, Eq)

-- Definimos las Fórmulas lógicas
data Formula = Pred Nombre [Termino] 
            | Neg Formula 
            | Conj Formula Formula 
            | ParaTodo Nombre Formula 
            deriving (Show, Eq)


esPar :: Termino -> Bool
esPar (Const n) = read n `mod` 2 == 0
esPar _ = False


evaluar :: Formula -> Bool
evaluar (Pred "Par" [t]) = esPar t
evaluar (Conj f1 f2) = evaluar f1 && evaluar f2
evaluar _ = False

main :: IO()
main = do

    putStrLn "Ingrese el primer numero: "
    input1 <- getLine

    putStrLn "Ingrese el segundo numero: "
    input2 <- getLine

    let formula1 = Pred "Par" [Const input1]
    let formula2 = Pred "Par" [Const input2]


    putStrLn("El numero: " ++ input1 ++ " es par? " ++ show(evaluar formula1))
    putStrLn("El numero: " ++ input2 ++ " es par? " ++ show(evaluar formula2))
    putStrLn("Los numeros: " ++ input1 ++ " Y " ++ input2 ++ " Son pares? " ++ show(evaluar formula1 && evaluar formula2))





