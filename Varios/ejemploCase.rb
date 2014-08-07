def mensaje(color)
case color
  when 'rojo'
    respuesta = 'No pase'
  when 'amarillo' 
    respuesta = 'cuidado' 
  when 'verde'
    respuesta = 'pase'
  else 
    respuesta = 'malogrado'
end
end

#--- zona de test ----

def test_convertir
    print validate('No pase', mensaje('rojo'))
    print validate('cuidado', mensaje('amarillo'))
    print validate('pase', mensaje('verde'))
    print validate('malogrado', mensaje('azul'))
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_convertir
  puts " "
end
test