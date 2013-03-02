suma = 0
while(suma < 15) do
  puts "Ingrese un valor"
  numero = gets.chomp.to_i
  suma = suma + numero
end
puts "La suma es: " + suma.to_s