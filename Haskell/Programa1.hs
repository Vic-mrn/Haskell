suma_cuad_4 :: [Integer] -> Integer
suma_cuad_4 [] = 0
suma_cuad_4 (x:xs) = x*x + suma_cuad_4 xs


