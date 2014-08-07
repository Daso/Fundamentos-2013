puts "Ingresa tu nombre"
nombre = gets
puts "Ingresa un valor"
valor1 = gets.chomp.to_i
puts "Ingresa otro valor"
valor2 = gets.chomp.to_i
puts "Hola #{nombre}" 
puts "La suma es: " + (valor1 + valor2).to_s