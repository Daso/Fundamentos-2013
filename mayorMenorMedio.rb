puts "ingrese a"
a = gets.chomp.to_i
mayor = a
menor = a
puts "ingrese b"
b = gets.chomp.to_i
if(b > mayor)
  mayor = b
end
if(b < menor)
  menor = b
end
puts "ingrese c"
c = gets.chomp.to_i
if(c > mayor)
  mayor = c
end
if(c < menor)
  menor = c
end
puts "el mayor es: " + mayor.to_s
puts "el menor es: " + menor.to_s
medio = ((a + b + c) - (mayor + menor))
puts "el del medio es:" + medio.to_s

