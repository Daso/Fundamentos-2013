def cantidad_aprobados(notas)
  contador = 0
  for i in 0...notas.length
    if notas[i] > 10
	  contador = contador + 1
	end
  end
  return contador
end

def mayor_nota(notas)
  return notas.sort.last
end

def primer_puesto(notas, nombres)
  mayor_nota = notas[0]
  primer = nombres[0]
  posicion = 0
  for i in 0...notas.length
    if notas[i] > mayor_nota
	  mayor_nota = notas[i]
	  posicion = i
	end
  end
  return nombres[posicion]
end

def promedio_notas(notas)
  suma = 0
  for i in 0...notas.length
    suma = suma + notas[i]
  end
  return suma / notas.length
end

notas2 = [15, 13, 17, 20]
notas1 = [20, 20, 17, 20, 19]
nombres = ["Carlos", "Silvia", "Luis", "Carolina"]
puts primer_puesto(notas1, nombres)
puts promedio_notas(notas1)
puts mayor_nota(notas1)
puts cantidad_aprobados(notas1)
