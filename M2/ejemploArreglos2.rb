def mas_gana(nombres, sueldos)
mayor_sueldo = sueldos[0]
nombre_mayor_sueldo = nombres[0]
	for i in 0..(sueldos.size-1) do
		if (mayor_sueldo < sueldos[i])
			mayor_sueldo = sueldos[i]
			nombre_mayor_sueldo = nombres[i]
		end
	end
  nombre_mayor_sueldo
end

def promedio_sueldos(sueldos)
indice_final = sueldos.size - 1
total  = 0 
  for i in 0..indice_final do
    total = total + sueldos[i]
  end
  total / sueldos.size
end

nombres = ["Luis", "Jorge", "Lola"]
sueldos = [1000, 2400, 5600]
puts mas_gana(nombres,sueldos)
puts promedio_sueldos(sueldos)

