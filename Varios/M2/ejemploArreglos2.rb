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

def reporte_monto_mayor(nombres,sueldos,monto)
  felices = Array.new
  indice_final = sueldos.size - 1
  for i in 0..indice_final do
    if (sueldos[i] >= monto)
      felices.push(nombres[i])
    end
  end
  felices
end

nombres = ["Luis", "Jorge", "Lola"]
sueldos = [1000, 2400, 5600]
puts "El que gana mejor es: "
puts mas_gana(nombres,sueldos)
puts "El promedio de sueldos es: "
puts promedio_sueldos(sueldos)
puts "Los trabajadores que ganan arriba de 1200 son: "
puts reporte_monto_mayor(nombres,sueldos,1200)

