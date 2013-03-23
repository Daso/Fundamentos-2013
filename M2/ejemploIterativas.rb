limite = 0
contador = 0
acumulador = 0
while (limite != 7) do
 
  puts limite  
  contador = contador + 1
  acumulador = acumulador + limite
  limite = Random.rand(11)
end

puts "Termino, salio 7"
puts "Se generaron #{contador} numeros"
puts "La suma de todos los valores es: #{acumulador}"