evaluarNota :: Double -> String
evaluarNota notaIngresada
  | notaFinal < 10.5 = "Reprobado"
  | notaFinal <= 14 = "Regular"
  | otherwise = "Destacado"
  where
    notaFinal = notaIngresada + 1.0

main :: IO()
main = do
  putStrLn "Ingrese una nota: "
  input <- getLine
  let nota = read input :: Double

  putStrLn("El resultado es: " ++ show(evaluarNota nota))