=begin 
Una empresa de ventas está realizando sus proyecciones de gastos en sueldos para la campaña del siguiente año 2016 y para ello está realizando un cálculo mensual y anual de lo que su personal debería cobrar en base a un incremento mensual por desempeño y a un posible bono extra.

Para ello hay que considerar que en la empresa existen cuatro tipos de roles para sus trabajadores:

Rol del Trabajador	Incremento Mensual	Bono Extra
Practicantes	(p)	3%					1%
Asistentes 		(a)	5%					2.5%
Seniors 		(s)	8%					4%
Gerentes 		(g)	12%					6.5%

Cada trabajador tiene diferentes sueldos y el cálculo debe ser dependiendo del rol. En caso de tener el bono extra, este bono debe ser aplicado también mensualmente.

Por ejemplo si un Asistente (a) gana 2000 soles mensuales para el segundo mes debe tener un incremento del 5%. Su sueldo para el segundo mes debe ser 2100, para el tercer mes sería en 2205 y así sucesivamente. 

En caso que el asistente tiene el bono extra, se debe también incluir en el cálculo, por ejemplo, si gana 2000 soles y tiene el 5% de incremento mensual, adicionalmente también tiene el 2.5%. Considerando todo ello el sueldo para el segundo mes debería ser 2150.00. Si seguimos así, para el tercer mes deberíamos tener un sueldo de 2311.25

•	Elaborar una subrutina que permita obtener el porcentaje de incremento mensual tomando como base el rol del trabajador
•	Elaborar una subrutina que permita obtener el bono extra utilizando como base al rol del trabajador.
•	Elaborar una subrutina que me permita obtener el sueldo en un mes determinado considerando los incrementos mensuales y/o bonos extras.

=end 


def incremento_mensual(rol_trabajador)
  case rol_trabajador
  when 'p'
    0.03 
  when 'a'
    0.05
  when 's'
    0.08
  else
    0.12 
  end   
end

def bono_extra(rol_trabajador)
  case rol_trabajador
    when 'p'
      0.010 
    when 'a'
      0.025
    when 's'
      0.040
    else
      0.065 
    end   
end

def calcular_sueldo(sueldo, rol_trabajador, meses, tiene_bono)
  if tiene_bono
    porcentaje = incremento_mensual(rol_trabajador) + bono_extra(rol_trabajador)
  else
    porcentaje = incremento_mensual(rol_trabajador)
  end
  for i in 1..meses
    sueldo = sueldo + (sueldo * porcentaje) 
  end  
  sueldo.round(2)
end

#----------Zona de Test------------------

def test_incremento_mensual
	print validate(0.03, incremento_mensual('p'))
	print validate(0.05, incremento_mensual('a'))
	print validate(0.08, incremento_mensual('s'))
	print validate(0.12, incremento_mensual('g'))
end

def test_bono_extra
	print validate(0.010, bono_extra('p'))
	print validate(0.025, bono_extra('a'))
	print validate(0.040, bono_extra('s'))
	print validate(0.065, bono_extra('g'))
end

def test_calcular_sueldo
	print validate(1795.86,calcular_sueldo(1000,'a',12,false))
	print validate(4934.56,calcular_sueldo(2500,'g',6,false))
	print validate(5268.85,calcular_sueldo(1900,'s',9,true))
	print validate(1280.83,calcular_sueldo(800,'p',12,true))
	print validate(3173.75,calcular_sueldo(2000,'s',6,false))
	print validate(5915.54,calcular_sueldo(3000,'g',4,true))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_incremento_mensual
  puts " "
  test_bono_extra
  puts " "
  test_calcular_sueldo
  puts " "
end

test
