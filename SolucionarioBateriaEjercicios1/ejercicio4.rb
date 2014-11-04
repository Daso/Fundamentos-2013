# programa
=begin
Desarrollar un programa que me permita ingresar el precio de un producto 
y me devuelva el precio con el IGV aplicado.
=end

IGV = 0.18
def precio_con_igv(monto)
  return (monto + monto * IGV).round(2)
end

#--- zona de test ----
def test_determinarcuota
    print validate(118.0, precio_con_igv(100.0))
    print validate(2107.30, precio_con_igv(1785.85))
    print validate(2217.81, precio_con_igv(1879.5))
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

# fin 
