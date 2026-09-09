sumarLista :: [Int] -> Int
sumarLista [] = 0
sumarLista (x:xs) = x + sumarLista xs

main :: IO()
main = do
    putStrLn "Ingrese la lista por espacio"
    input <- getLine
    let lista = map read(words input) :: [Int]

    putStrLn("La suma de elementos de la lista es: " ++show(sumarLista lista))