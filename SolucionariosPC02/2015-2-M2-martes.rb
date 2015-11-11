=begin 
Pregunta 1 

Una reconocida empresa de transporte terrestre necesita incrementar sus ventas, motivo por el cual ha decidido establecer un esquema de premios basado en puntos que el cliente obtiene de acuerdo a los kilómetros que ha recorrido en sus viajes. El plan se llama “Viajero Frecuente”. Según este plan, se otorgará una bonificación de puntos sobre los puntos ya obtenidos hasta antes de la fecha de inicio del lanzamiento de la campaña. 

La bonificación se calcula en base a un factor que se determina de acuerdo a los kilómetros que el cliente tiene acumulados en su estado de cuenta y de acuerdo a si la bonificación será por viajes nacionales o internacionales. Considere la siguiente tabla:

Viaje
Tipo    Km. recorridos % de bonificación 

Nacional  
  Hasta     10000         10.61
  Entre     10001 y 16000 20.52
  Entre     16001 y 18000 30.43
  Mayor a   18000         40.11

Internacional 
  Hasta     25000           45.34
  Entre     25001 y 30000   55.25
  Entre     30001  y 45000  65.16
  Mayor a   45000           75.13


Adicionalmente, se aplica otra bonificación especial. Se aplica de acuerdo al tipo de cliente según lo siguiente:

- Cliente normal    10%
- Cliente preferencial  12%
- Cliente VIP   20%

Existe un tercer tipo de bonificación que se aplica de acuerdo al día en que el cliente decide viajar, así tenemos lo siguiente:

- Lunes a Miércoles 20%
- Jueves y Viernes  15%
- Sábados y Domingos  10%

Todas las bonificaciones se aplican sobre el total de kilómetros acumulados del cliente.

Se le solicita lo siguiente:

a)  Desarrollar un subprograma para determinar el porcentaje de bonificación.
b)  Desarrollar un subprograma para determinar el porcentaje de bonificación especial.
c)  Desarrollar un subprograma para determinar el porcentaje de bonificación de acuerdo al día.
d)  Desarrollar un subprograma para determinar el total de kilómetros con las tres bonificaciones.

=end

#encoding:UTF-8
def calcularbonificacion(tipoviaje,kilometros)
  if tipoviaje == "Nacional"  
    
    case kilometros
    when 0..10000
      10.61
    when 10001..16000
      20.52
    when 16001..18000
      30.43
    else
      40.11
    end
  else
    case kilometros
    when 0..25000
      45.34
    when 25001..30000
      55.25
    when 30001..45000
      65.16
    else
      75.13     
    end
  end
end

def calcularotrabonificacion(tipocliente)
  case tipocliente
  when "normal"
    10.00
  when "preferencial"
    12.00
  else
    20.00
  end
end

def calcularbonificaciondia(dia)
  case dia
  when "Lunes"
    20
  when "Martes"
    20
  when "Miercoles"
    20
  when "Jueves"
    15
  when "Viernes"
    15
  when "Sabado"
    10
  when "Domingo"
    10
end

end

def calculartotalkilometros(tipocliente,tipoviaje,kilometros,dia)	
  bonificacion01 =  kilometros * calcularbonificacion(tipoviaje,kilometros) / 100
  bonificacion02 =  kilometros * calcularotrabonificacion(tipocliente) / 100
  bonificacion03 =  kilometros * calcularbonificaciondia(dia) / 100
  kilometros + bonificacion01 + bonificacion02 + bonificacion03

end
#--- zona de test ----

def validate(expected, value)    
  expected == value ? "." : "F"
end

def test_calcularbonificacion
    print validate(10.61,calcularbonificacion("Nacional",10000))
    print validate(20.52,calcularbonificacion("Nacional",12000))
    print validate(30.43,calcularbonificacion("Nacional",18000))
    print validate(40.11,calcularbonificacion("Nacional",25000))
    print validate(45.34,calcularbonificacion("Internacional",20000))
    print validate(55.25,calcularbonificacion("Internacional",30000))
    print validate(65.16,calcularbonificacion("Internacional",45000))
    print validate(75.13,calcularbonificacion("Internacional",45600))
end

def test_calcularotrabonificacion
    print validate(10.00,calcularotrabonificacion("normal"))
    print validate(12.00,calcularotrabonificacion("preferencial"))
    print validate(20.00,calcularotrabonificacion("VIP"))
end

def test_calculartotalkilometros
    print validate(14061.0,calculartotalkilometros("normal","Nacional",10000,"Lunes"))
    print validate(23283.2,calculartotalkilometros("normal","Nacional",16000,"Jueves"))
    print validate(70360.8,calculartotalkilometros("normal","Internacional",38000,"Domingo"))
    print validate(48190.8,calculartotalkilometros("preferencial","Nacional",28000,"Martes"))
    print validate(49630.0,calculartotalkilometros("preferencial","Internacional",28000,"Sabado"))
    print validate(46828.6,calculartotalkilometros("VIP","Nacional",26000,"Miercoles"))
    print validate(80064.0,calculartotalkilometros("VIP","Internacional",40000,"Viernes"))
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularbonificacion
  puts " "
  test_calcularotrabonificacion
  puts " "
  test_calculartotalkilometros
  puts " "
end
test
