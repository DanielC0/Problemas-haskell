unos :: [Integer]
unos = 1:unos

obtenerPrimero :: Show a => [a] -> String
obtenerPrimero(x:_) = show x
obtenerPrimero [] = "Esta lista esta vacia"

main :: IO()
main = do

    putStrLn("El primer elemento es: " ++ show(obtenerPrimero unos))
    putStrLn("Los 5 primeros elementos son: " ++ show(take 5 unos))
