print "ingrese monto a cambiar a dolares "
monto = gets.to_r
if monto > 0
dolares = monto/2.55
puts "total dolares "+ dolares.to_s
else
puts " "
end
puts "__________________________________________________________________"
print "ingrese monto a cambiar a soles "
monto = gets.to_r
if monto > 0
soles = monto*2.55
puts "total soles "+ soles.to_s
else
puts " "
end
puts "__________________________________________________________________"




def dividir (a, b)
	a  / b
end
def multiplicar (a, b)
	a * b
end


