=begin
Desarrollar un programa que, considerando un saldo
inicial en una cuenta me permita retirar un mismo 
monto n veces siempre y cuando el saldo final no sea
menor que 0. Mostrar el saldo y el número de retiros
=end
def banco(monto_retiro)
  cuenta = 1000
  contador = 0
  while (cuenta - monto_retiro) >= 0
    cuenta = cuenta - monto_retiro
    contador = contador + 1
  end
  "El saldo es: #{cuenta} y son #{contador} retiros"
end
puts banco(300)
