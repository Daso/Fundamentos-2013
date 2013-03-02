# Una empresa desea un programa que le permita generar la información nutricional 
#de sus productos. Se sabe que este producto tiene tres ingredientes

# -Cloruro de Sodio
# -Bicarbonato de Sodio
# -Azucar

# Se sabe que por cada 100mg de Cloruro de Sodio se debe aumentar en 15mg la cantidad 
# de sodio y 0mg la cantidad de carbohidratos.

# Por cada 80mg de Bicarbonato de Sodio se debe aumentar en 25mg la cantidad de sodio 
#y en 10mg la cantidad de carbohidratos.

# Por cada 50mg de azucar se debe aumentar en 15g los carbohidratos y 0mg el sodio. 

# Según las normas de salud el producto no debe tener más de 250mh de carbohidratos
# y 150 gr de sodio desarrollar el subprograma calcular_sodio que permita calcular 
#la cantidad de sodio. 

# Desarrollar el subprograma llamado calcular_carbohidratos que permita calcular la cantidad
# de carbohidratos. 

# Desarrollar el subprograma llamado es_apto? que permita determinar si es que un
# producto es apto o no es apto según las normas. 

def calcular_sodio (cloruro_de_sodio, bicarbonato_de_sodio)
	cloruro_de_sodio * 15 / 100 + bicarbonato_de_sodio * 25 / 80
end

def calcular_carbohidratos (bicarbonato_de_sodio, azucar)
	bicarbonato_de_sodio * 10 / 80 + azucar * 15 / 50
end

def es_apto? (cloruro_de_sodio, bicarbonato_de_sodio, azucar)
  sodio = calcular_sodio(cloruro_de_sodio,bicarbonato_de_sodio)
  carbohidratos = calcular_carbohidratos(bicarbonato_de_sodio, azucar)
	if ((sodio > 150) or (carbohidratos > 250))
    false
  else
    true
  end
end
#--- zona de test ----

def test_calcular_sodio
  print validate(calcular_sodio(100.0, 80.0), 40.0)
  print validate(calcular_sodio(350.0, 20.0), 58.75)
end

def test_calcular_carbohidratos
  print validate(calcular_carbohidratos(80.0, 50.0), 25.0)
  print validate(calcular_carbohidratos(280.0, 240.0), 107.0)
end
def test_es_apto?
  print validate(es_apto?(150, 250, 100),true)
  print validate(es_apto?(1500, 250, 100),false)
  print validate(es_apto?(150, 2500, 100),false)
  print validate(es_apto?(150, 250, 10000),false)
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcular_sodio
  test_calcular_carbohidratos
  test_es_apto?
  puts " "
end
test
#puts es_apto?(1000,1,300)