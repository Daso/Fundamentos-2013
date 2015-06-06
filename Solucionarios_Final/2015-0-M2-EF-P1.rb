=begin 
EtherTel

La empresa de telefonía EtherTel Perú desea una 
aplicación para poder determinar el rendimiento 
de su fuerza de venta. Para ello se entregan los 
datos de los vendedores y sus ventas del periodo. 
Se pide se desarrollen los siguientes subprogramas:

Un subprograma que me indique cuántos vendedores 
están sobre el promedio de ventas. 

Un subprograma que determine el promedio de ventas 
del periodo. 

Un subprograma que determine al mejor vendedor y el 
monto correspondiente en formato [nombre, monto]

Un subprograma que determine al peor vendedor y el 
monto correspondiente en formato [nombre, monto]

Un subprograma que calcule el porcentaje de 
diferencia de ventas entre el mejor vendedor y 
el peor vendedor. Por ejemplo si el mejor vendedor 
ha vendido 2000 y el peor 500 entonces diremos que 
el peor vendedor es el 25 % del mejor
 

=end

def promedio_ventas(ventas)
	suma = 0
  for i in 0...ventas.size
    suma = suma + ventas[i]
  end
  suma / ventas.size
end    

def cantidad_sobre_el_promedio(ventas)
	promedio = promedio_ventas(ventas)
  contador = 0
  for i in 0...ventas.size
    if ventas[i] > promedio
      contador = contador + 1
    end
  end
  contador
end

def mejor_vendedor(vendedores, ventas)
  mejor = []
  nombre = vendedores[0]
  mayor = ventas[0]
  for i in 0...ventas.size
    if ventas[i] > mayor
      mayor = ventas[i]
      nombre= vendedores[i]
    end
  end
  mejor << nombre
  mejor << mayor
  mejor

end

def peor_vendedor(vendedores, ventas)
  peor = []
  nombre = vendedores[0]
  menor = ventas[0]
  for i in 0...ventas.size
    if ventas[i] < menor
      menor = ventas[i]
      nombre= vendedores[i]
    end
  end
  peor << nombre
  peor << menor
  peor
end

def porcentaje_diferencia(vendedores, ventas)
  mejor = mejor_vendedor(vendedores, ventas)
  peor = peor_vendedor(vendedores, ventas)
  (peor[1] * 100 / mejor[1]).round(2)
end

#--- zona de test ----

def test_promedio_ventas
  print validate(2162.23,promedio_ventas(@ventas1))
  print validate(2477.5,promedio_ventas(@ventas2))
end

def test_cantidad_sobre_el_promedio
  print validate(2,cantidad_sobre_el_promedio(@ventas1))
  print validate(2,cantidad_sobre_el_promedio(@ventas2))
end

def test_mejor_vendedor
  print validate(["Jorge",3824.9],mejor_vendedor(@vendedores1,@ventas1))
  print validate(["Sonia", 2849.0],mejor_vendedor(@vendedores2,@ventas2))  
end

def test_peor_vendedor
  print validate(["Pedro",1023.9],peor_vendedor(@vendedores1,@ventas1))
  print validate(["Fernando",2083.5],peor_vendedor(@vendedores2,@ventas2))
end

def test_porcentaje_diferencia
  print validate(26.77,porcentaje_diferencia(@vendedores1,@ventas1))
  print validate(73.13,porcentaje_diferencia(@vendedores2,@ventas2))
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  @vendedores1 = ["Carlos", "Ana", "Pedro", "Jorge"]
  @vendedores2 = ["Miguel", "Sonia", "Fernando"]
  
  @ventas1 = [1298.12, 2502.0, 1023.9, 3824.9]
  @ventas2 = [2500.0, 2849.0, 2083.5]
  
  puts "---------------------------"
  test_promedio_ventas
  puts " "
  test_cantidad_sobre_el_promedio
  puts " "
  test_mejor_vendedor
  puts " "
  test_peor_vendedor
  puts " "
  test_porcentaje_diferencia
  puts " "
end
test
