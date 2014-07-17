#encoding:UTF-8
=begin
Pregunta 1 

Un banco realizó una competencia con sus clientes para 
poder determinar al ganador. El juego consistía en predecir 
los resultados de los partido del mundial. Por cada partido 
acertado se dan 3 puntos. Sin embargo todos los clientes no 
son iguales pues el banco tiene tres tipos de clientes: 
premium, empresarial y natural. 

En el caso de los clientes premium se les da 1 punto 
adicional por partido acertado. En el caso de los clientes 
empresariales se les da un bonificador de 5 puntos sin 
importar la cantidad de partidos acertados, finalmente 
los clientes naturales no reciben modificación alguna. 

Se pide elaborar un programa que permita determinar la 
cantidad de puntos obtenidos por un cliente determinado. 

Por otro lado a los ganadores del sorteo se les dará un 
premio en efectivo equivalente a los puntos obtenidos. 
Para ello se calcula según dos fórmulas

En el caso de ser soles

Total = saldo en cuenta * puntos / 1000.0

En el caso de ser dólares

Total = (saldo en cuenta * puntos / 1500.0) + 100

Desarrollar un programa que permita calcular el 
total del premio de un cliente determinado. 

=end
def calcularPuntos(tipoCliente, partidosAcertados)
 puntos = partidosAcertados * 3
 case tipoCliente
  when "premium"
    puntos = puntos + partidosAcertados
  when "empresarial"
    puntos = puntos + 5
 end
return puntos 
end

def calcularPremio(saldo,puntosTotales, tipoMoneda)  
  if tipoMoneda == "soles"
   total = saldo * puntosTotales / 1000.0
  else
   total = saldo * puntosTotales / 1500.0 + 100
  end
  return total  
end

#--- zona de test ----

def test_calcularPuntos
    print validate(28, calcularPuntos("premium",7))
	print validate(38, calcularPuntos("empresarial",11))
    print validate(12, calcularPuntos("natural",4))    
	print validate(29, calcularPuntos("empresarial",8))    
	print validate(20, calcularPuntos("premium",5))    	
end

def test_calcularPremio
    print validate(28.0, calcularPremio(1000.0,28,"soles")) 
    print validate(138.0, calcularPremio(1500.0,38,"dolares")) 
    print validate(50.0, calcularPremio(2500.0,20,"soles")) 
    print validate(124.0, calcularPremio(3000.0,12,"dolares")) 
	print validate(37.7, calcularPremio(1300.0,29,"soles")) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  
  puts "Tests para calcular puntos"
  puts "---------------------------"
  test_calcularPuntos
  puts " "
  puts "Tests para calcular premio total"
  puts "---------------------------"
  test_calcularPremio
  puts " "
  puts "Un punto por test"
end
test
