Skip to content
This repository
Search
Pull requests
Issues
Gist
 @Daso
 Sign out
 Unwatch 2
  Star 4
 Fork 7 Daso/Fundamentos-2013
 Code  Issues 0  Pull requests 0  Projects 0  Wiki  Pulse  Graphs  Settings
Branch: master Find file Copy pathFundamentos-2013/SolucionarioPC03/2015-1-m1-miércoles-p1.rb
684405a  on 3 Jun 2015
@Daso Daso Create 2015-1-m1-miércoles-p1.rb
1 contributor
RawBlameHistory     
98 lines (79 sloc)  2.6 KB
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
 
end

def mes_alarma(mes_inicial, mes_maximo, temperatura_actual)
  
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
Contact GitHub API Training Shop Blog About
© 2017 GitHub, Inc. Terms Privacy Security Status Help
