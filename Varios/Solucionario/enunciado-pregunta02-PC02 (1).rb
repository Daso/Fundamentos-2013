#encoding: utf-8
def impuesto(monto)  
  monto * 0.3
end

def pago_impuesto?(monto)
  if(monto > 2500)
    true
  else
    false
  end
end

#--- zona de test ----

def test_impuesto
    print validate(900.00, impuesto(3000.00)) 
    print validate(750.00, impuesto(2500.00)) 
end

def test_pago_impuesto?
    print validate(false, pago_impuesto?(1000.00)) 
    print validate(true, pago_impuesto?(4000.00)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_impuesto
  test_pago_impuesto?
  puts " "
end
test