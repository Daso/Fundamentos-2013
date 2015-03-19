=begin

Crear un programa que teniendo el sueldo bruto mensual y 
la utilidad que recibe una persona durante un año, se 
conoce que la persona percibe 14 sueldos al año. El programa 
debe determinar el impuesto a la renta que debe pagar por concepto 
de quinta categoría. Para este problema considerar el monto de la 
Unidad Impositiva Tributaria (UIT) es de S/. 3,600.00 para el
 ejercicio fiscal 2014. El monto del impuesto se calcula de la 
 siguiente forma:

El sueldo bruto mensual se multiplica por la cantidad de 
sueldos que percibe la persona al año. A este cálculo se 
le debe añadir el monto percibido por concepto de utilidades. 
Al resultado obtenido previamente se le debe restar la denominada 
deducción legal que consiste de siete (7) UIT, el impuesto es el 
21% del resultado obtenido.
=end
UIT = 3600
def obtenerimpuesto(sueldobruto,utilidad)
	sueldo = sueldobruto * 14 + utilidad
	ded_legal = sueldo - (UIT * 7)
	ded_legal * 0.21
end 

#--- zona de test ----




def test_obtenerimpuesto
    print validate(27258.00, obtenerimpuesto(10000.00,15000.0))
    print validate(56658.00, obtenerimpuesto(20000.00,15000.0))
    print validate(72408.00, obtenerimpuesto(25000.00,20000.0))

end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_obtenerimpuesto
  puts " "
end
test
