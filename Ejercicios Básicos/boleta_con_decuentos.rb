=begin
Se necesita un programa para calcular el importe neto que 
debe pagar a los empleados. Se sabe que la boleta de pago 
consta del sueldo básico, una bonificación del 15% sobre el 
sueldo básico, pago de horas extras (S/.15.00 por hora extra 
trabajada). Adicionalmente, se realizan los cálculos de la 
AFP como descuentos de ley como siguen: 10% para el fondo, 
1.2% para seguro, 1.5% comisión, que se calculan sobre el 
sueldo bruto.

Desarrollar el programa que permita realizar este cálculo
	
=end


def calcularsueldoneto(basico,horasextras)
  sueldo_bruto = basico + (basico * 0.15) + horasextras * 15
  descuento = sueldo_bruto * 0.1 + sueldo_bruto * 0.012 + sueldo_bruto * 0.015
  sueldo_bruto - descuento
end

#--- zona de test ----

def test_calcularsueldoneto
    print validate(1265.85, calcularsueldoneto(1000.00,20))
    print validate(2138.85, calcularsueldoneto(2000.00,10))
    print validate(3077.325, calcularsueldoneto(3000.00,5))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularsueldoneto
  puts " "
end
test
