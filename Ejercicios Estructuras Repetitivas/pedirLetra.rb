#encoding : UTF-8
caracter = " "
contador = 0
while caracter != 'a'
  puts "Presione una tecla"
  caracter = gets.chomp
  contador +=  1
end
puts "Presionó " + contador.to_s + " teclas"
puts "FIN" 
