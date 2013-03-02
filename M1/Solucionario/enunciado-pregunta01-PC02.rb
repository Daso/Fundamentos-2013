#encoding: utf-8
def sueldo_contratado(ventas)
  1000 + (ventas * 0.20)
end

def sueldo_fijo(ventas)
  1500 + (ventas * 0.10)
end

def sueldo_hora(ventas)
  800 + (ventas * 0.40)
end

def tipo_sueldo(tipo_empleado, ventas)
  case tipo_empleado
    when 'c'
      sueldo_contratado(ventas)
    when 'f'
      sueldo_fijo(ventas)
    when 'h'
      sueldo_hora(ventas)
  end 
end


#--- zona de test ----

def test_sueldo_contratado
    print validate(1200.00, sueldo_contratado(1000.00)) 
    print validate(1060.00, sueldo_contratado(300.00)) 
end

def test_sueldo_fijo
    print validate(1600.00, sueldo_fijo(1000.00)) 
    print validate(1700.00, sueldo_fijo(2000.00)) 
end

def test_sueldo_hora
    print validate(1200.00, sueldo_hora(1000.00)) 
    print validate(2800.00, sueldo_hora(5000.00)) 
end

def test_tipo_sueldo
    print validate(1200.00, tipo_sueldo('c',1000.00)) 
    print validate(1600.00, tipo_sueldo('f',1000.00)) 
    print validate(1200.00, tipo_sueldo('h',1000.00)) 
end
def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_sueldo_contratado
  test_sueldo_fijo
  test_sueldo_hora
  test_tipo_sueldo
  puts " "
end
test