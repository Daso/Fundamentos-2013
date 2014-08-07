factorial = 1
puts "Ingrese factor"
factor =  gets.chomp.to_i
for i in 1..factor
  factorial = factorial * i
end
puts factorial