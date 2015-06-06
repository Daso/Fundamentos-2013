=begin 
Gobierno Municipal

El gobierno municipal de Lima requiere una aplicación 
que le permita determinar el crecimiento financiero 
mensual. Para ello tiene los datos de los ingresos 
de los periodos y los egresos de los mismos. 
Se requieren los siguientes subprogramas

Un subprograma que me permita determinar si es que 
entre el primer y último periodo ha habido 
crecimiento o no. Para ello deberá operar los 
ingresos menos los egresos y comparar la diferencia. 
En caso de ser positiva entre el último y el primer 
periodo entonces hay crecimiento, en caso de ser 
cero o negativa entonces no hay crecimiento. 

Determinar el periodo de mayor crecimiento. Los 
periodos están determinados por los meses del año 
(de Enero a Mayo solamente). Así el primer periodo 
siempre es enero.  

Un subprograma que me permita determinar cuánto 
debería juntar el siguiente periodo para que sea 
mejor que el actual. Se considera que a partir de 
1 sol más del saldo ya es una mejora. Recordar 
que el total del periodo son la suma de ingresos 
menos la suma de los egresos del periodo actual. 

=end

def crecimiento(ingresos, egresos)
	diferencia_inicial = ingresos.first - egresos.first
  diferencia_final = ingresos.last - egresos.last
  if diferencia_final - diferencia_inicial > 0
    true
  else
    false
  end

end    

def mayor_crecimiento(ingresos, egresos)
  mayor = ingresos[0] - egresos[0]
  mes = 0
  for i in 0...egresos.size
    if mayor < (ingresos[i] - egresos[i])
      mayor = ingresos[i] - egresos[i]
      mes = i
    end
  end
  case mes
    when 0
      "Enero"
    when 1
      "Febrero"
    when 2
      "Marzo"
    when 3
      "Abril"
    else
      "Mayo"
  end
end

def siguiente_periodo(ingresos, egresos)
  total_ingresos = 0
  total_egresos = 0
  for i in 0...ingresos.size
    total_ingresos = total_ingresos + ingresos[i]
    total_egresos = total_egresos + egresos[i]    
  end
  (total_ingresos - total_egresos + 1).round(2)
end

#--- zona de test ----

def test_crecimiento
  print validate(false,crecimiento(@ingresos1, @egresos1))
  print validate(true,crecimiento(@ingresos2, @egresos2))
end

def test_mayor_crecimiento
  print validate("Enero",mayor_crecimiento(@ingresos1, @egresos1))
  print validate("Marzo",mayor_crecimiento(@ingresos2, @egresos2))
end

def test_siguiente_periodo
  print validate(99641.63,siguiente_periodo(@ingresos1, @egresos1))
  print validate(84459.25,siguiente_periodo(@ingresos2, @egresos2))  
end




def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  @ingresos1 = [50000.0, 28345.56, 32345.65, 23455.99]
  @ingresos2 = [25340.0, 22849.0, 43083.55]
  @egresos1 = [10000.0, 2039.45, 2333.22, 20133.90]
  @egresos2 = [2345.5, 1234.3, 3234.5]
  
  puts "---------------------------"
  test_crecimiento
  puts " "
  test_mayor_crecimiento
  puts " "
  test_siguiente_periodo
  puts " "
end
test
