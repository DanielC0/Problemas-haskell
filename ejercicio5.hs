data Termino = Var String | Const String deriving Show

verPrimerTermino :: [Termino] -> String
verPrimerTermino(x:_) = "El primer elemento es: " ++ show x
verPrimerTermino [] = "Esta lista esta vacia"

main :: IO()
main = do

    let terminos = [Var "x", Const "Lima"]

    putStrLn("El primer termino es: " ++ show(verPrimerTermino terminos))