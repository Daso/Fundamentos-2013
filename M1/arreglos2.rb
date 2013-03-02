nombres = ["Miguel", "Carlos", "Pedro", "Sonia", "Cristina"]
alumnos = [12, 14, 5, 20, 3]
mayor = alumnos[0]
menor = alumnos[0]
indice_mayor = 0
indice_menor = 0
for i in 0..(alumnos.size - 1) do 
 if(alumnos[i] > mayor)
 	mayor = alumnos[i]
 	indice_mayor = i
 end
 if(alumnos[i] < menor)
 	menor = alumnos[i]
 	indice_menor = i
 end
end
puts "El alumnos con nota mayor es " + nombres[indice_mayor]
puts "El alumnos con nota menor es " + nombres[indice_menor]