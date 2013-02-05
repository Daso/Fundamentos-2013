puts "Ingrese el valor"
valor = gets.chomp.to_i
if((valor % 2) != 0)
	puts "impar"
else
	puts "par"
end
if(valor > 0)
	puts "mayor que 0"
else
	puts "no es mayor que 0"
end