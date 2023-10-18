-- Listas con un elemento replicado
-- Es necesario replicar un elemento n veces 
-- Recibe un entero que sera el numero de veces a replicar y tambien el elemento y devolvera una lista 
replica :: Int -> a -> [a] 
-- Se usa una lista por comprension la cual generara los valores con los cuales se hara la replicacion
replica n x = [x | _ <- [1 .. n]]