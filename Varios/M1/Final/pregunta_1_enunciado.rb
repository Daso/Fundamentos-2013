# # Desarrollar un programa que me permita calcular las estadísticas de las ventas
# # del año en una empresa. 

# # Para ello se tiene como dato de entrada las ventas de los doce meses del año. 

# # Luego de ingresarlas el programa deberá mostrar: el mes con mayor venta, 
# el mes con menor venta, el promedio mensual de ventas y las ventas totales. 

# # Para ello se le pide elaborar 4 subprogramas. 

# # El primero es uno llamado mes_de_mayor_venta que recibe el arreglo de los 
# nombres y el arreglo de los precios y devuelve como resultado el nombre del 
# mes de mayor venta. 

# # El segundo es uno llamado mes_de_menor_venta que recibe el arreglo de los 
# nombres y el arreglo de los precios y devuelve como resultado el nombre del 
# mes de menor venta. 

# # El tercero es uno llamado promedio_mensual_de_ventas que recibe el arreglo 
# de precios y retorna el promedio mensual de las ventas del año.

# # El cuarto es uno llamado ventas_totales que recibe el arreglo de precios y 
# retorna la suma acumulada de las ventas del año.



def mes_de_mayor_venta (nombres, precios)
  mayor = precios[0]
  indice_del_mayor = 0
  for i in 0..(precios.size - 1) do
    if (precios[i] > mayor)
        mayor = precios[i]
        indice_del_mayor = i
    end
  end
  nombres[indice_del_mayor]

end

def mes_de_menor_venta (nombres ,precios)
 menor = precios[0]
  indice_del_menor = 0
  for i in 0..(precios.size - 1) do
    if (precios[i] < menor)
        menor = precios[i]
        indice_del_menor = i
    end
  end
  nombres[indice_del_menor]
end

def promedio_mensual_de_ventas (precios)
  total = 0
  for i in 0..(precios.size - 1) do
    total += precios[i]
  end
  total / precios.size
end

def ventas_totales (precios)
 total = 0
  for i in 0..(precios.size - 1) do
    total += precios[i]
  end
  total
end

#--- zona de test ----


def test_metodo_mes_de_mayor_venta
  print validate(mes_de_mayor_venta(@nombres, @precios), "enero")
end

def test_mes_de_menor_venta
  print validate(mes_de_menor_venta(@nombres, @precios), "febrero")
end
def test_promedio_mensual_de_ventas
  print validate(promedio_mensual_de_ventas(@precios),39)
end
def test_ventas_totales
  print validate(ventas_totales(@precios),468)
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  @nombres = ["enero", "febrero", "marzo", "abril", "mayo", "junio", "julio", "agosto", "setiembre" ,"octubre", "noviembre", "diciembre"]
  @precios = [120, 12, 24, 36, 36, 36, 24, 72, 24, 24, 36, 24]
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_metodo_mes_de_mayor_venta
  test_mes_de_menor_venta
  test_promedio_mensual_de_ventas
  test_ventas_totales
  puts " "
end
test