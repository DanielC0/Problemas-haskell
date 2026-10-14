validarID :: [Int] -> [(Int, String)]
validarID lista = [(x, if x/=0 then "Valido" else "Invalido") | x <- lista]

main :: IO()
main = do
     putStrLn "Ingrese la lista de codigos: "
     input <- getLine
     let lista =  map read(words input) :: [Int]

     putStrLn("Los codigos validos e invalidos son: " ++ show(validarID lista))

