=begin
Ejercicio 05: En una corporación se requiere calcular 
el ratio de precios de un producto a lo largo del tiempo. 
Para ellos se tiene como dato los precios del producto a 
lo largo de 5 años. 
El ratio se calcula mediante la siguiente fórmula

Ratio = (P1 + P2 * 2 + P3 * 2.5 + P4 * 3 + P5 * 3.5) / 12

El programa deberá mostrar
“El ratio es: <RATIO>”
=end

def ratio(p1, p2, p3, p4, p5)
  return "El ratio es: " + ((p1 + p2 * 2 + p3 * 2.5 + p4 * 3 + p5 * 3.5) / 12).round(2).to_s
end

#--- zona de test ----
def test_determinarcuota
    print validate("El ratio es: 3.67", ratio(3,5,6,3,2))
    print validate("El ratio es: 5.71", ratio(1,2,8,4,9))
    print validate("El ratio es: 2.29", ratio(1,2,5,1,2))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_determinarcuota
  puts " "
end
test
