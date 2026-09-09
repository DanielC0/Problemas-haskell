puntos :: [Int]
puntos = [10,20..100]

agregarPuntaje :: Int -> [Int] -> [Int]
agregarPuntaje nuevoPuntaje lista
    |nuevoPuntaje < 0 = error "El puntaje no puede ser menor a 0"
    |otherwise = nuevoPuntaje : lista


menu :: [Int] -> IO ()
menu puntos = do
    putStrLn "\n--- MENU PUNTOS DE FIDELIDAD ---"
    putStrLn "1. Buscar puntaje (elem)"
    putStrLn "2. Ver cantidad de niveles (lenght)"
    putStrLn "3. Agregar puntaje"
    putStrLn "0. Salir"
    putStrLn "Elija un opcion: "
    opcion <-getLine
    case opcion of
        "1" -> do
            putStrLn "Ingrese el puntaje a buscar"
            input <- getLine
            let p = read input :: Int
            if elem p puntos
                then putStrLn "El puntaje existe en la lista"
                else putStrLn "El puntaje no existe"
            menu puntos 

        "2" -> do
            putStrLn ("Cantidad de niveles actual es: " ++show(length puntos))
            menu puntos

        "3" -> do
            putStrLn "Ingrese el nuevo puntaje"
            input <- getLine
            let p = read input :: Int
            let nuevaLista = agregarPuntaje p puntos
            putStrLn "Puntaje agregado con exito"
            menu nuevaLista

        "0" -> putStrLn "Gracias por usar el programa"

        _ -> do
            putStrLn "Opcion invalidad, intente de nuevo"
            menu puntos



main :: IO()
main = menu puntos 
    