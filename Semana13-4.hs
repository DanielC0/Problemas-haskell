import System.IO (hFlush, stdout)
-- | Tipo de dato para representar sujetos (usuarios, dispositivos, etc.)
type Termino = String

-- | Predicados: Funciones que evalúan una propiedad sobre un término
type Predicado = Termino -> Bool


evaluarAcceso :: Termino -> Predicado -> Predicado -> Bool
evaluarAcceso x esUser tieneLlave = esUser x && tieneLlave x

usuariosRegistrados :: [Termino]
usuariosRegistrados = ["Miguel", "Socrates", "Pedro"]

esUser :: Predicado
esUser x = x `elem` usuariosRegistrados

tieneLlave :: Predicado
tieneLlave x = x == "Miguel" || x == "Socrates"


main :: IO()
main = do

    putStrLn "Ingrese un usuario: "
    input <- getLine

    let resultado = evaluarAcceso input esUser tieneLlave

    if resultado == True
        then putStrLn "ACCESO CONCEDIDO"
        else putStrLn "ACCESO DENEGADO"

        



        