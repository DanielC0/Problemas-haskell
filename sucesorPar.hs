sucesor :: Int -> Int
sucesor n = n + 1

esPar :: Int -> Bool
esPar n =  even n

main :: IO()
main = do

    putStrLn "Ingrese un numero: "
    input <- getLine
    let resultado = read input :: Int

    let par = esPar (sucesor resultado)

    putStrLn("El sucesor del numero ingresado es: " ++ show( sucesor resultado))
    putStrLn("El numero suscesor es par?: " ++show(par))
