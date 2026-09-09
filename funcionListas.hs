reversePrecios :: [Float] -> [Float]
reversePrecios xs = reverse xs

primerElemento :: [Float] -> Float
primerElemento xs = head xs

main :: IO()
main = do
    putStrLn("Ingrese la lista de consumo")
    input <- getLine
    let lista = map read (words input) :: [Float]

    putStrLn("La lista de consumo original es: " ++ show(lista))
    putStrLn("La lista de consumo al reves es: " ++ show(reversePrecios lista))
    putStrLn("El pimer pedido es: " ++ show(primerElemento lista))

