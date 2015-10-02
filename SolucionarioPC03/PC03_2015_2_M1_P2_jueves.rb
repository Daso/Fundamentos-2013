#encoding:UTF-8
=begin 
Pregunta 2                  (10 puntos)

Debido a la creciente incertidumbre sobre la economía global, el dólar se ha venido apreciando durante todo el año. Es por esto que una corporación del país ha decidido, en base a una correlación estadística, realizar una proyección de sus ingresos y egresos financieros para los próximos doce meses.

Sus egresos financieros están basados en bonos corporativos por US$ 1 millón de dólares emitidos en la Bolsa de Nueva York, con vencimiento dentro de 2 años, de los cuales tiene que pagar 2.5% mensual. Adicionalmente tiene estimado pagar US$ 15,000 por una carta fianza única.
  
Sus ingresos financieros están basados en facturas por cobrar de S/. 570,000 mensuales. 

Se estima que el tipo de cambio tendrá la siguiente característica: Aumentará 1% durante dos meses y luego 2% el tercer mes. Al cuarto y quinto mes volverá a aumentar 1% y   al sexto nuevamente 2% y así sucesivamente. El tipo de cambio a la fecha es de 3.20 soles por dólar.

Desarrollar un subprograma que calcule el total de egresos financieros acumulados, dado el número de meses.

Desarrollar un subprograma que calcule el tipo de cambio después de un número de meses dado.

Desarrollar un subprograma que calcule el resultado financiero acumulado en soles (Ingresos financieros menos egresos financieros) después de un número de meses dado.

=end
def egresosFinancieros(meses)
	(1000000 * 2.5 / 100 * meses) + 15000 
end 

def tipoCambio(meses)
  cambio = 3.20
  for i in 1..meses
    if i % 3 == 0
       cambio = cambio * 1.02
    else
       cambio = cambio * 1.01
    end
  end
  cambio.round(2)
end

def resultadoFinanciero(meses)
	ingresos = 570000 * meses 
  egresos = egresosFinancieros(meses) * tipoCambio(meses)
  ingresos - egresos
end

#--- zona de test ----

def test_egresosFinancieros
    print validate(90000.00, egresosFinancieros(3))
    print validate(140000.00, egresosFinancieros(5))
    print validate(165000.00, egresosFinancieros(6))
end

def test_tipoCambio
  print validate(3.33, tipoCambio(3))
	print validate(3.36, tipoCambio(4))
  print validate(3.46, tipoCambio(6))
  print validate(3.50, tipoCambio(7))
end

def test_resultadoFinanciero
	print validate(1410300.0, resultadoFinanciero(3))
	print validate(2374000.0, resultadoFinanciero(5))
	print validate(2849100.0, resultadoFinanciero(6))
end 

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_egresosFinancieros
  test_tipoCambio
  test_resultadoFinanciero 	
  puts " "
end
test

