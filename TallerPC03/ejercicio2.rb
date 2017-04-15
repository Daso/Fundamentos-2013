=begin 
Pregunta 1 
Debido al fenómeno del niño el gobierno requiere 
llevar un cuidadoso registro de la temperatura del 
mar en los meses del año. Se sabe que en enero, 
abril, julio y octubre la temperatura sube un 15%. 
En los meses de febrero, marzo, noviembre y junio 
la temperatura baja un 13% y en agosto, setiembre, 
mayo y diciembre sube un 12%. Estas temperaturas 
van variando cada mes. 
Se pide desarrolle un subprograma que permita 
calcular la temperatura proyectada considerando 
el mes actual, la temperatura actual y el mes a 
calcular. 
Por ejemplo si se tiene como mes actual enero y 
se quiere medir hasta diciembre el cambio de 
temperatura de 25 grados se enviará como datos 
nueva_temperatura(1, 12, 25.0)
La respuesta será la nueva temperatura
De igual manera se quiere calcular el mes de mayor 
temperatura desde un mes inicial hasta un mes 
final. De forma tal que si quiero calcular el 
mes de mayor temperatura entre marzo y julio 
comenzando en marzo con una temperatura de 25 
grados se enviará como datos 
mes_alarma(3, 7, 25.0)
La respuesta será el número del mes con mayor 
temperatura entre el mes 3 y 7 
=end

def nueva_temperatura(mes_inicial, mes_final, temperatura_actual)
  for i in mes_inicial..mes_final
    case i
    when 1, 4, 7, 10
      temperatura_actual = temperatura_actual * 1.15
    when 2, 3, 11, 6
      temperatura_actual = temperatura_actual * 0.87
    else
      temperatura_actual = temperatura_actual * 1.12
    end
  end
  temperatura_actual.round(2)
end

def mes_alarma(mes_inicial, mes_maximo, temperatura_actual)
  mes_mayor = 0
  temperatura_mayor = 0
  for i in mes_inicial..mes_maximo
    temperatura = nueva_temperatura(mes_inicial, i, temperatura_actual)
    if temperatura > temperatura_mayor
      temperatura_mayor = temperatura
      mes_mayor = i
    end
  end
  mes_mayor
end

#--- zona del programa principal ----

#--- zona de test ----
def test_nueva_temperatura
    print validate(39.42, nueva_temperatura(1, 12, 25.0)) 
    print validate(32.5, nueva_temperatura(3, 5, 29.0)) 
    print validate(32.77, nueva_temperatura(2, 8, 30.0)) 
    print validate(25.69, nueva_temperatura(2, 9, 21.0)) 
end


def test_mes_alarma
    print validate(7,  mes_alarma(3, 7, 25.0)) 	
    print validate(10,  mes_alarma(1, 12, 27.0))   
    print validate(10,  mes_alarma(2, 10, 21.0))   
    print validate(5,  mes_alarma(4, 6, 22.0))   
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_nueva_temperatura
  puts " "
  test_mes_alarma
end
test
