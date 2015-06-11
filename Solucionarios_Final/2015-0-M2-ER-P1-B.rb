=begin 
 1.- Play Park

Play Park es un nuevo parque de diversiones que unos inversionistas locales planean 
abrir antes de finales de año en la ciudad de Lima y de ahí ir abriendo sucursales 
en distintas ciudades del país. Sin embargo, antes de proceder con dicha inversión,
es necesario que ellos realicen algunas evaluaciones de dicho proyecto, para lo cual 
solicitan a su área de tecnología les pueda elaborar un programa que los ayude a 
realizar dichos cálculos. 

Se le solicita:

a)  Si se tiene la información promedio del número de asistentes al parque por día de 
la semana, se pide calcular el promedio de asistentes en la semana.

b)  Si se tiene la información de las probabilidades que existen en la semana de que 
el espectador, además de comprar su entrada, pueda comprar algún snack. Determinar 
cuál es el ingreso semanal esperado por concepto de snacks. Esto depende de la cantidad 
promedio de espectadores en el día, la cantidad de días y la posibilidad de que compren
 snack además del precio. 

c)  Con los ingresos esperados, se necesita saber si es que el negocio es rentable, 
razón por la cual es necesario calcular los egresos. Los egresos son calculados de la 
siguiente manera: 

Egresos = costos fijos semanales + costos variables semanales.

Los costos fijos son de 5000 soles semanales, mientras que los costos variables 
dependen exclusivamente de la venta de snacks. Por cada sol proveniente de la venta 
de snacks, se tiene un costo de 0.30 centavos. Tomar en cuenta que ya se tienen los 
ingresos esperados por concepto de snacks

d)  Finalmente se pide determinar cuál es la ganancia esperada por semana. 
Ganancia = Ingresos - Egresos.
Tomar en  cuenta que los ingresos son el número promedio de asistentes al día por la 
cantidad de días y el precio de la entrada más los ingresos por snacks menos los 
egresos. 

=end
def obtenerNumeroPromedioAsistentesAlDia(asistentes)
	suma = 0
  for i in 0...asistentes.size
    suma = suma + asistentes[i]
  end
  suma / asistentes.size
end    

def obtenerIngresoEsperadoSemanalPorSnack(asistentes,probabilidades,precioSnack)
	suma = 0
  for i in 0...asistentes.size
     suma = suma + (asistentes[i] * probabilidades[i] * precioSnack)
  end
  suma
end

def obtenerEgresosEsperadoSemanal(asistentes,probabilidades,precioSnack)
	5000 + (obtenerIngresoEsperadoSemanalPorSnack(asistentes,probabilidades,precioSnack) * 0.3)
end

def obtenerGananciaEsperadaSemanal(asistentes,probabilidades,precioSnack,precioEntrada)
	promedio =  obtenerNumeroPromedioAsistentesAlDia(asistentes)
  ingresos = promedio * asistentes.size * precioEntrada + obtenerIngresoEsperadoSemanalPorSnack(asistentes,probabilidades,precioSnack)
  egresos = obtenerEgresosEsperadoSemanal(asistentes,probabilidades,precioSnack)
  ingresos - egresos
end

#--- zona de test ----

def test_obtenerNumeroPromedioAsistentesAlDia
  print validate(4.0,obtenerNumeroPromedioAsistentesAlDia(@asistentes1))
  print validate(5.0,obtenerNumeroPromedioAsistentesAlDia(@asistentes2))
end

def test_obtenerIngresoEsperadoSemanalPorSnack
  print validate(136.0,obtenerIngresoEsperadoSemanalPorSnack(@asistentes1,@probabilidades,10))
  print validate(324.0,obtenerIngresoEsperadoSemanalPorSnack(@asistentes2,@probabilidades,20))
end

def test_obtenerEgresosEsperadoSemanal
   print validate(5040.80,obtenerEgresosEsperadoSemanal(@asistentes1,@probabilidades,10))
   print validate(5097.20,obtenerEgresosEsperadoSemanal(@asistentes2,@probabilidades,20))  
end

def test_obtenerGananciaEsperadaSemanal
   print validate(-3704.80,obtenerGananciaEsperadaSemanal(@asistentes1,@probabilidades,10,50))
   print validate(-3873.20,obtenerGananciaEsperadaSemanal(@asistentes2,@probabilidades,20,30))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  @asistentes1 = [5,2,3,4,5,5]
  @asistentes2 = [5,5,6,6,4,4]
  
  @probabilidades = [0.5,0.5,0.4,0.6,0.6,0.7]
  
  puts "---------------------------"
  test_obtenerNumeroPromedioAsistentesAlDia
  puts " "
  test_obtenerIngresoEsperadoSemanalPorSnack
  puts " "
  test_obtenerEgresosEsperadoSemanal
  puts " "
  test_obtenerGananciaEsperadaSemanal
  puts " "
end
test
