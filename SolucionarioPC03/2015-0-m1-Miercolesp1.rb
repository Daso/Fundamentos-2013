=begin
Debido	a una sequía se decidió poner en práctica un sistema de cobro de agua que penalice el consumo excesivo tal como indica la tabla siguiente:

Consumo (m3)	Soles / m3
Primeros 100	0.15
De 101 a 500	0.20
De 501 a 1000	0.35
Más de 1000	    0.80

Tener en cuenta que en la tabla se indica lo que hay que cobrar por los m3 que se encuentran en el intervalo. Así, si hemos consumido 750 m3 deberíamos pagar:	

100*0,15 + 400*0,20 + 250*0,35 = S/. 182,50.

Se pide lo siguiente:

1.	Subprograma que dada una determinada cantidad de m3, devuelva el costo en soles.
2.	Subprograma que calcule el monto a pagar.

=end

def costoM3(consumo)
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
	if consumo <= 100
    consumo * 0.15
  elsif consumo > 100 && consumo <= 500
    15 + (consumo - 100) * 0.20
  elsif consumo > 500 && consumo <= 1000
    95 + (consumo - 500) * 0.35
  else
    270 + (consumo - 1000) * 0.80
  end
=begin 
  monto = 0.0
    
  for i in 1..consumo
    monto += costoM3(i)
  end
  return monto.round(2)
=end

end

#--- zona del programa principal ----

#--- zona de test ----
def test_costoM3
    print validate(0.20, costoM3(150)) 
    print validate(0.35, costoM3(560)) 
    print validate(0.80, costoM3(1560)) 
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
  test_costoM3
  puts ""
  test_montoPagar
  puts " "
end
test
