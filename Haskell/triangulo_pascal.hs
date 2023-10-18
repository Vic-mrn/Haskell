-- Definicion de pascal
pascal :: [[Integer]] 
pascal = [1] : map f pascal
    where
    f xs = [1] ++ [x + y | (x, y) <- pares xs] ++ [1]

-- Funcion pares utilizada en la lista por comprensión
pares :: [a] -> [(a, a)]
pares (x:y:xs) = (x, y) : pares (y:xs)
pares _ = []


-- Finalmente se crean unas funciones para mostrar los elementos centrados
-- Ej. MostrarPascal 0 5
mostrarPascal :: Int -> Int -> IO ()
mostrarPascal n m
    |n < m = do
        centrar 80 (convertir (pascal !! n))
        mostrarPascal (n + 1) m
    |otherwise = putStrLn "FIN"

convertir :: Show a => [a] -> String
convertir [] = ""
convertir (x:xs) = show x ++ "   " ++ convertir xs

centrar :: Int -> String -> IO ()
centrar ancho texto = putStrLn(replicate ((ancho - length texto) `div` 2) ' ' ++ texto)








