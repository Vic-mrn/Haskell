-- Consultas en bases de datos con listas de comprension

empleados :: [(String, String, Int)]
empleados =
  [ ("Victor", "Cajas", 3000),
    ("Ana", "Administracion", 5000),
    ("Alejandro", "Cajas", 3000),
    ("Aldrich", "Almacen", 4000),
    ("Lea", "Administracion", 5000),
    ("Juan", "Almacen", 4000),
    ("Jordi", "Cajas", 3000)
  ]

nombre :: [(String, String, Int)] -> [String]
nombre bd = [x | (x, _, _) <- bd]

area :: [(String, String, Int)] -> String -> [(String, String)]
area bd a = [(x, a') | (x, a', _) <- bd, a == a']

sueldoMayorA :: [(String, String, Int)] -> Int -> [(String, Int)]
sueldoMayorA bd s = [(x, s1) | (x, _, s1) <- bd, s1 > s]

sueldoMenorA :: [(String, String, Int)] -> Int -> [(String, Int)]
sueldoMenorA bd s = [(x, s1) | (x, _, s1) <- bd, s1 < s]
