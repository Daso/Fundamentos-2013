=begin

Una empresa requiere determinar si debe invertir en fondos mutuos o en cuentas de plazo fijo. 
Para ello desea una aplicación que le permita calcular ambas posibilidades. 

En el caso de fondos mutuos se determinar el grado de riesgo tomando en cuenta que puede 
ser de tres tipos .

Bajo Riesgo (b) : 8% mensual de interés.

Riego Moderado (m) : 12% mensual de interés.

Alto Riesto (a) : 15% mensual de interés.

Los tiempos de inversión pueden variar pero siempre es mensual.

Por otro lado el plazo fijo tiene una tasa mensual que varía según el tipo de cuenta y plazo. 
Así una cuenta a plazo fijo puede ser a 12 meses con un interés del  10%. En este caso el plazo 
es fijo pero el interés variable. Para el caso del Plazo fino solamente se consideran dos 
opciones: 6 meses o 12 meses. 

Se solicita:

1. Un subprograma que indique el interés según el tipo de fondo mutuo.
2. Un subprograma que me permita calcular mi ganacia si ingreso a fondos mutuos tomando en cuenta el 
tiempo de inversión, el monto y el tipo. 
2. Un subprograma que me permita calcular mi ganancia si ingreso a plazo fijo tomando en cuenta el monto, 
la tasa y el tiempo.
3. Un subprograma que me permita determinar si la mejor opción es Plazo Fijo o Fondos Mutuos comparando 
las ganancias de ambos con un mismo monto. 

=end

def interes(tipo)
  if tipo == "b"
    0.08
  elsif tipo == "m"
    0.12
  else
    0.15
  end
end

def fondos_mutuos(tipo, monto, tiempo)
  tiempo.times do 
    monto += (monto * interes(tipo))   
  end
  monto.round(2)
=begin
  porcentaje = interes(tipo)
  for i in 1..tiempo
    monto = monto + (monto * porcentaje)
  end
  monto.round(2)
=end
end

def plazo_fijo(monto,tasa, tiempo)
	tiempo.times do 
    monto += (monto * tasa)
  end
  monto.round(2)
end

def mejor_opcion(monto, tipo, tiempo_fondos, tiempo_plazo_fijo, tasa)
  fondos = fondos_mutuos(tipo, monto, tiempo_fondos)
  plazo = plazo_fijo(monto,tasa, tiempo_plazo_fijo)
  if fondos > plazo
    "Fondos Mutuos"
  else
    "Plazo Fijo"
  end
end

#--- zona del programa principal ----

#--- zona de test ----
def test_interes
    print validate(0.08,interes("b")) 
    print validate(0.12,interes("m")) 
    print validate(0.15, interes("a")) 
end

def test_fondos_mutuos
    print validate(1973.82,fondos_mutuos("m", 1000.0, 6)) 
    print validate(3673.32,fondos_mutuos("b", 2500.0, 5)) 
    print validate(29426.38,fondos_mutuos("a", 5500.0, 12))  
end

def test_plazo_fijo
    print validate(1418.52,plazo_fijo(1000.0, 0.06, 6)) 
    print validate(13375.63,plazo_fijo(2500.0, 0.15, 12)) 
    print validate(10856.02,plazo_fijo(5500.0, 0.12, 6))  
end

def test_mejor_opcion
    print validate("Fondos Mutuos",mejor_opcion(1000.0, "m", 6, 6, 0.06)) 
    print validate("Plazo Fijo",mejor_opcion(2500.0, "b", 5, 12, 0.15)) 
    print validate("Fondos Mutuos",mejor_opcion(5500.0, "a", 12, 6, 0.12))  
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_interes
  puts ""
  test_fondos_mutuos
  puts " "
  test_plazo_fijo
  puts " "
  test_mejor_opcion
end
test

