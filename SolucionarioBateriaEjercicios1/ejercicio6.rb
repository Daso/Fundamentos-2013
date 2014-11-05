=begin
Ejercicio 06: Desarrollar un programa que me permita ingresar un monto 
y me permita mostrar en qué billetes puedo entregarlo priorizando los 
de mayor valor tomando en cuenta que los billetes de mayor denominación 
tienen prioridad. Los billetes son de 50, 20, 5 y 1

Ejemplo:

Monto = 127

La salida será 
2 billetes de 50, 1 billete de 20, 1 billete de 5, 2 billetes de 1

=end

def billetes(monto)
  billetes50 = monto / 50
  monto = monto % 50
  billetes20 = monto / 20
  monto = monto % 20
  billetes5 = monto / 5
  monto = monto % 5
  monto = monto 
  billetes1 = monto
  puts billetes50.to_s + " billetes de 50, " + billetes20.to_s +  " billetes de 20, " + billetes5.to_s + " billetes de 5, " + billetes1.to_s + " billetes de 1"  
  return billetes50.to_s + " billetes de 50, " + billetes20.to_s +  " billetes de 20, " + billetes5.to_s + " billetes de 5, " + billetes1.to_s + " billetes de 1"  
end

#--- zona de test ----
def test_determinarcuota
    print validate("2 billetes de 50, 1 billetes de 20, 1 billetes de 5, 2 billetes de 1", billetes(127))
    print validate("6 billetes de 50, 1 billetes de 20, 0 billetes de 5, 2 billetes de 1", billetes(322))
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
