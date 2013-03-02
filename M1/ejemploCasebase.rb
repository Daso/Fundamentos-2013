puts "Ingrese el color"
color = gets.chomp
case color
  when 'rojo'
    puts'No pase'
  when 'amarillo' 
    puts 'cuidado' 
  when 'verde'
    puts 'pase'
  else 
    puts 'malogrado'
end