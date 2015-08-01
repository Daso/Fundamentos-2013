=begin
Sobre uso de celular

Se ha determinado que el uso de mb para enviar datos se va a manejar según los siguientes montos:

Consumo (mb)    Soles / mb
Primeros 100mb    0.15
De 101 a 500 mb    0.20
De 501 a 1000 mb    0.35
Más de 1000 mb    0.80

Los montos se incrementan según la cantidad de mb usados. Si por ejemplo uso 80 mb entonces pago:    

80*0,15

Pero si consumo 110 entonces pago los primeros 100 a 0.15 y los siguientes 10 a la tarifa siguiente que serían 0.20 soles lo que daría como resultado.

100 * 0.15 + 10 * 0.20

Se pide lo siguiente:

1.    Subprograma que dada una determinada cantidad de mb (consumo), devuelva el costo/mb.
2.    Subprograma que calcule el monto total a pagar.

=end

def costo_mb(consumo)
	case consumo
  when 0..100
    0.15
  when 101..500
    0.20
  when 501..1000
    0.35
  else
    0.80
  end
end

def montoPagar(consumo)
  total = 0
  for i in 1..consumo
    total += costo_mb(i)
  end
  total.round(2)
end

#--- zona del programa principal ----

#--- zona de test ----
def test_costo_mb
    print validate(0.20, costo_mb(150)) 
    print validate(0.35, costo_mb(560)) 
    print validate(0.80, costo_mb(1560)) 
end

def test_montoPagar
    print validate(182.50, montoPagar(750)) 
    print validate(1058.0, montoPagar(1985)) 
    print validate(80.0, montoPagar(425)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_costo_mb
  puts ""
  test_montoPagar
  puts " "
end
test

