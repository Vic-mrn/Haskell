empleados :: [(String, String, Int)]
empleados = [("Victor","Cajas",3000),
    ("Ana","Administracion",5000),
    ("Alejandro","Cajas",3000),
    ("Aldrich","Almacen",4000),
    ("Lea","Administracion",5000),
    ("Juan","Almacen",4000),
    ("Jordi","Cajas",3000)]

nombre :: [(String, String, Int)] -> [String]
nombre bd = [x | (x,_,_) <- bd]    

cajas :: [(String, String, Int)] -> [String]
cajas bd = [x | (x,c,_) <- bd, c == "Cajas"]    

area :: [(String,String,Int)] -> String -> [String]
area bd a = [ x | (x,a',_) <- bd, a == a' ]



sueldoMayorA :: [(String,String,Int)] -> Int -> [String]
sueldoMayorA bd s = [x | (x,a,s1) <- bd, s1 >= s]

sueldoMenorA :: [(String,String,Int)] -> Int -> [String]
sueldoMenorA bd s = [x | (x,a,s1) <- bd, s1 <= s]

potencia m 0 = 1
potencia m n = m* (potencia m (n-1))


