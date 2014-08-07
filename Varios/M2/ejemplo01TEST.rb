#Una empresa desea una aplicación que permita calcular el total a pagar
#tomando en cuenta los precios de todos los productos que están en un arreglo
#en caso que el total sea mayor a 100 se dará un porcentaje de descuento del 10%
#Crear:
#un subprograma debera calcular el igv, un subprograma que permita calcular el total
#un subprograma que permita calcular el descuento y un subprograma que permita calcular
#el pago final



def calcular_total(precios)

end

def calcular_igv(monto)
	
end

def calcular_descuento(monto)	
	
end

def calcular_pago_final(precios) 
	
end

#--- zona de test ----


def test_calcular_igv
  print validate(18, calcular_igv(100))
end

def test_calcular_total
  print validate(42, calcular_total(@precios))
  print validate(60, calcular_total(@precios2))
end

def test_calcular_descuento
  print validate(0, calcular_descuento(80))
  print validate(0.1, calcular_descuento(180))
end

def test_calcular_pago_final
  print validate(49.56, calcular_pago_final(@precios))
  print validate(70.8, calcular_pago_final(@precios2))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  @precios = [12.00, 24.00, 6.00]
  @precios2 = [10.00, 20.00, 30.00]
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcular_igv
  test_calcular_total
  test_calcular_descuento
  test_calcular_pago_final
  puts " "
end
test