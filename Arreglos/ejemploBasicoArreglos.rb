def cantidad_desaprobados(notas)
  contador = 0
  for i in 0...notas.size
    if notas[i] <= 10
      contador += 1
    end
  end
  contador
end

def cantidad_aprobados(notas)
  notas.size - cantidad_desaprobados(notas)
end

def primer_puesto(notas, nombres)
  mayor = notas[0]
  posicion = 0
  for i in 0...notas.size
    if notas[i] > mayor
      mayor = notas[i]
      posicion = i
    end
  end
  nombres[posicion]
end

notas = [20, 15, 17]
alumnos = ["Carlos", "Pedro", "Sandra"]
notas2 = [5, 10, 17, 2]
alumnos2 = ["Miguel", "Pepe", "Lolo", "Karla"]
puts primer_puesto(notas, alumnos)
