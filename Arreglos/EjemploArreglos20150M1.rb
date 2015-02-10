def promedio(notas)
  total = 0
  for i in 0..notas.size - 1
    total = total + notas[i]
  end  
  return (total / notas.size).round(2)
end

def primer_puesto(notas, nombres)
  nota_mayor = notas[0]
  alumno_primer_puesto = nombres[0] 
  indice = 0  
  for i in 0...notas.size
    if notas[i] > nota_mayor
	  nota_mayor = notas[i]
	  indice = i
	end
  end
  return nombres[indice]  
end

def cantidad_aprobados(notas)
  aprobados = 0
  for i in 0...notas.size
    if notas[i] > 10
	  aprobados += 1
	end
  end
  return aprobados
end

def alumnos_con_notas_superiores_al_promedio(notas, nombres)
  promedio_alumnos = promedio(notas)
  superiores = []
  for i in 0...notas.size
    if notas[i] > promedio_alumnos
	  superiores.push(nombres[i])
	end
  end
  return superiores
end


notas1 = [12.0 ,20.0, 17.0 ,16.0, 10.0]
notas2 = [12.0 ,10.0, 14.0 ,9.0]
nombres1 = ["Carlos", "Miguel", "Vanessa", "Luis", "Jorge"]
nombres2 = ["Ana", "Zoila", "Jaime", "Carol"]
puts alumnos_con_notas_superiores_al_promedio(notas1, nombres1)
puts alumnos_con_notas_superiores_al_promedio(notas2, nombres2)


