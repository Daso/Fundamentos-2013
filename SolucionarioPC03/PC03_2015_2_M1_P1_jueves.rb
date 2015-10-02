#encoding:UTF-8
=begin 
Pregunta 1                    (10 puntos)

La financiera “Presta Mucho” ha implementado una nueva política para evaluación y desembolso de préstamos, para lo cual ha solicitado a su área de tecnología que se automaticen en el Sistema.  

Dicha política de evaluación se determina tomando en cuenta el tipo de préstamo solicitado, la situación conyugal de la persona y la calificación de la persona en el Sistema Financiero, otorgando puntajes por cada uno de estos criterios. El puntaje acumulado se multiplica por el ingreso mensual de la persona, dando como resultado el importe máximo que se le puede otorgar al cliente.  

La tabla de puntajes es la siguiente:

Tipo de Préstamo  Puntaje Situación Conyugal  Puntaje Calificación  Puntaje
Sin aval  1 Soltero 3 Normal  3
Con 1 aval  2 Casado  2 Problemas 2
Con 2 avales  3  Otro 1  Dudoso 0 

Desarrollar un subprograma que reciba como parámetros el tipo de préstamo, la situación conyugal y la calificación en el Sistema Financiero del cliente y calcule el puntaje resultante.
Desarrollar un subprograma que calcule el importe máximo que puede prestarse al cliente.


=end
def calcularPuntaje(tipoPrestamo, sitConyugal, calificacion)
  total = 0
  case tipoPrestamo
  when "Sin aval"
    total += 1
  when "Con 1 aval"
    total += 2
  when "Con 2 avales"
    total += 3
  end
  case sitConyugal
  when "Soltero"
    total += 3
  when "Casado"
    total += 2
  when "Otro"
    total += 1
  end  
  case calificacion
  when "Normal"
    total += 3
  when "Problemas"
    total += 2
  when "Dudoso"
    total += 0
  end  
                  
end

def calcularPrestamo(tipoPrestamo, sitConyugal, calificacion, ingresoMensual)
  calcularPuntaje(tipoPrestamo, sitConyugal, calificacion) * ingresoMensual  
end

#--- zona de test ----

def test_calcularPuntaje
   print validate(7, calcularPuntaje("Sin aval","Soltero","Normal"))
   print validate(6, calcularPuntaje("Sin aval","Casado","Normal"))
   print validate(5, calcularPuntaje("Con 1 aval","Otro","Problemas"))
   print validate(4, calcularPuntaje("Con 1 aval","Casado","Dudoso"))
   print validate(8, calcularPuntaje("Con 2 avales","Soltero","Problemas"))
end

def test_calcularPrestamo
   print validate(7000.00, calcularPrestamo("Sin aval","Soltero","Normal",1000.00))
   print validate(7200.00, calcularPrestamo("Sin aval","Soltero","Problemas",1200.00))
   print validate(4000.00, calcularPrestamo("Con 1 aval","Otro","Problemas",800.00))
   print validate(16000.00, calcularPrestamo("Con 1 aval","Casado","Dudoso",4000.00))
   print validate(15400.00, calcularPrestamo("Con 2 avales","Casado","Problemas",2200.00))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularPuntaje
  test_calcularPrestamo
  puts " "
end
test
