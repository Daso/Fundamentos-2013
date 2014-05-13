opcion = 's'
total = 0
contador = 0
while(opcion != 'n') do
  puts "Ingrese el precio" 
  precio = gets.chomp.to_f
  total = total + precio
  contador = contador + 1
  puts "Desea ingresar otro producto? (s / n)"
  opcion = gets.chomp  

end
  igv = total * 0.18
  puts "El total es: " + total.to_s
  puts "El total de productos es:" + contador.to_s
  puts "El IGV es: " + igv.to_s
  puts "El total a pagar: " + (total + igv).to_s