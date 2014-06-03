=begin
  Ejemplo de arreglo
=end

notas = []
alumnos = ["carla", "jorge", "gina","Carlo", "Pepe"]
for i in 0...alumnos.size
  puts "Ingrese la nota"
  notas[i] = gets.to_i
end
puts "Las notas son"

for x in 0...alumnos.size

  puts "La nota de: " + alumnos[x].to_s + " es " + notas[x].to_s

end



