sumarDosprimeros :: [Int] -> Int
sumarDosprimeros [] = 0 
sumarDosprimeros(x:y:xs) = x + y


main :: IO()
main = do
    putStrLn "Ingrese la lista de numeros"
    input <- getLine
    let lista = map read(words input) :: [Int]

    putStrLn("La suma de los dos primeros es: " ++ show(sumarDosprimeros lista))
    putStrLn("La posicion 5 de la lista es: " ++ show(lista !! 3))

