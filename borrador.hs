data Termino = Const String | Var String


esConstante :: Termino -> Bool
esConstante (Const _) = True
esConstante _ = False


verificar :: [Termino] -> Bool
verificar lista = all esConstante lista

main :: IO()
main = do

    let terminos = [Var "pablo", Const "Hola", Var "Pilar"]

    putStrLn("Son todos constantes: " ++ show(verificar terminos))