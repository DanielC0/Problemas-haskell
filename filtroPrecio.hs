filtroPrecio :: [Float] -> [Float]
filtroPrecio xs = filter(>20.0) xs

precioCaro :: [Float] -> Float
precioCaro xs = maximum xs 

precioBajo :: [Float] -> Float
precioBajo xs = minimum xs

elementoExacto :: [Float] -> Bool
elementoExacto xs = elem 18.0 xs

main :: IO()
main = do
    putStrLn "Ingrese la lista por espacios"
    input <- getLine
    let lista = map read (words input) :: [Float]

    putStrLn("Los platos que cuestan mas de 20 son: " ++show(filtroPrecio lista))
    putStrLn("El plato mas caro es: " ++ show(precioCaro lista))
    putStrLn("El plato mas barato es: " ++ show(precioBajo lista))
    putStrLn("El plato que cuesta 18.0 es: " ++show(elementoExacto lista))
