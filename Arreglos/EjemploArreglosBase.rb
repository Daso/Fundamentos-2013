def mayor(arreglo)
  return arreglo.sort.reverse.first
end

def menor(arreglo)
  return arreglo.sort.first
end

def sumatoria(arreglo)
  total = 0
  for i in 0..arreglo.size - 1
    total = total + arreglo[i]
  end
  return total
end

def promedio(arreglo)
  return sumatoria(arreglo) / arreglo.size
end

def aprobados(arreglo)
  contador = 0
  for i in 0...arreglo.size
    if arreglo[i] > 10
	  contador = contador + 1	
	end
  end
  return contador
end

def desaprobados(arreglo)
  contador = 0
  for i in 0...arreglo.size
    if arreglo[i] < 11
	  contador = contador + 1	
	end
  end
  return contador
end

def porcentaje_aprobados(arreglo)
  aprobados = aprobados(arreglo)  
  return aprobados * 100.0 / arreglo.size
end

def porcentaje_desaprobados(arreglo)
  desaprobados = desaprobados(arreglo)
  return desaprobados * 100.0 / arreglo.size
end

notas = [12, 8, 15, 9, 19]
notas2 = [10, 11, 12, 20, 9, 18, 14, 3]

puts porcentaje_aprobados(notas)
puts porcentaje_aprobados(notas2)
puts porcentaje_desaprobados(notas)
puts porcentaje_desaprobados(notas2)




