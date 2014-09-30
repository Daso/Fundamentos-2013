def primer_puesto(nombres, notas)
  mayor = notas[0]
  indice = 0
  nombre_primer_puesto = nombres[0]  
  for i in 0...notas.size
    if notas[i] > mayor
	  mayor = notas[i] 
      indice = i	  
	end
  end
  return nombres[indice]    
end

def alumnos_desaprobados(nombres, notas)
  jalados = []
  for i in 0...notas.size
    if notas[i] < 11
	  jalados.push(nombres[i])	
	end
  end
  return jalados
end

alumnos = ["Carla", "Manuel", "Felipe", "Sonia", "Sergio"]
alumnos2 = ["Miguel", "Sandra", "Luis"]
notas = [12, 8, 20, 9, 19]
notas2 = [10, 20, 9]

puts alumnos_desaprobados(alumnos, notas)
puts alumnos_desaprobados(alumnos2, notas2)
