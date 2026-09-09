productoLista :: [Int] -> Int
productoLista [] = 1
productoLista (x:xs) = x * productoLista xs

main :: IO()
main = do
    putStrLn "Ingrese la lista por espacios"
    input <- getLine
    let lista = map read(words input) :: [Int]

    putStrLn("El producto de la lista es: " ++show(productoLista lista))