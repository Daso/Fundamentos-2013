=begin 
Una empresa de venta de autos está teniendo problemas con el cálculo de comisiones de venta y esto está causando mucha incomodidad dentro de las propias oficinas. Adicionalmente como parte de su campaña para la mejora de las ventas está lanzando un grupo de descuentos para todo este año 2015.

La empresa necesita implementar una nueva forma de cálculo para las comisiones de sus vendedores.

Los modelos con los que trabaja actualmente son los siguientes:

Modelo      Precio  Descuento Comisión
Prado       26,900  4.5%      2.0%
Rav4        19,900  3.0%      1.5%
Auris       11,500  2.0%      1.0%
FJ          33,400  3.8%      2.8%
Camri       16,300  2.5%      1.9%
LandCruiser 29,500  3.2%      3.0%

Se pide lo siguiente: 
1.  Un programa que retorne el precio de un modelo determinado
2.  Un programa que retorne el descuento de un modelo determinado
3.  Un programa que retorne la comisión por la venta de un modelo determinado
4.  Un programa que calculo la comisión de un vendedor determinado


=end

def precio_modelo(modelo)
  case modelo 
  when "Prado"
    26900
  when "RAV4"
    19900
  when "Auris"
    11500
  when "FJ"
    33400
  when "Camri"
    16300
  else
    29500
  end
end
    
def descuento_modelo(modelo)
  case modelo 
  when "Prado"
    0.045
  when "RAV4"
    0.030
  when "Auris"
    0.020
  when "FJ"
    0.038
  when "Camri"
    0.025
  else
    0.032
  end
end

def comision_venta(modelo)
  case modelo 
  when "Prado"
    0.020
  when "RAV4"
    0.015
  when "Auris"
    0.010
  when "FJ"
    0.028
  when "Camri"
    0.019
  else
    0.030
  end
end
    
def calcular_comision(modelos, cantidades)
  total = 0
  for i in 0...modelos.size
    
    precio = precio_modelo(modelos[i])
    descuento = descuento_modelo(modelos[i])
    comision = comision_venta(modelos[i])
    total = total + (((precio - (precio * descuento)) * comision) * cantidades[i])
 end
  total.round(2)
end

#----------Zona de Test------------------
  @modeloA = ["Prado","FJ","LandCruiser"]
  @cantidadA = [2,1,1]
  @modeloB = ["Auris","RAV4","Prado"]
  @cantidadB = [3,1,2]
  @modeloC = ["FJ","Auris","Camri"]
  @cantidadC = [1,4,2]

def test_precio_modelo
  print validate(19900, precio_modelo("RAV4"))
  print validate(16300, precio_modelo("Camri"))
  print validate(33400, precio_modelo("FJ"))
end
    
def test_descuento_modelo
  print validate(0.020, descuento_modelo("Auris"))
  print validate(0.045, descuento_modelo("Prado"))
  print validate(0.032, descuento_modelo("LandCruiser"))
end

def test_comision_venta
  print validate(0.028, comision_venta("FJ"))
  print validate(0.030, comision_venta("LandCruiser"))
  print validate(0.015, comision_venta("RAV4"))
end 

def test_calcular_comision

  ventas1 = ["Prado","FJ","RAV4","Camri"]
  cantidad1 = [3,1,1,2]

  ventas2 = ["Auris","LandCruiser","Camri","FJ"]
  cantidad2 = [4,1,2,1]

  ventas3 = ["Camri","FJ","RAV4","Prado"]
  cantidad3 = [3,0,1,3]

  print validate(3334.49, calcular_comision(ventas1,cantidad1))
  print validate(2811.06, calcular_comision(ventas2,cantidad2))
  print validate(2736.79, calcular_comision(ventas3,cantidad3))

end
    
def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_precio_modelo
  puts " "
  test_descuento_modelo
  puts " "
  test_comision_venta
  puts " "
  test_calcular_comision
  puts " "
end

test
