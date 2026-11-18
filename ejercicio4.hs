esEstudiante :: String -> Bool
esEstudiante "Juan" = True
esEstudiante _ = False

main :: IO()
main = do

    putStrLn "Ingrese el nombre: "
    input <- getLine

    let p1 = esEstudiante input

    let resultado = if p1 == True
        then putStrLn "Es estudiante"
        else putStrLn "No es estudiante"


    putStrLn("Es el nombre ingresado un estudiante?: " ++ show (resultado))

   