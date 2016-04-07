=begin 
Ventas mensuales
Una empresa vendedora de fotocopiadoras necesita calcular cual ha sido el volumen de ventas de cada uno de sus agentes comerciales durante el presente mes y en base a eso determinar distintos indicadores así como montos a pagar en comisión de ventas.
  
Se le solicita:
a)  Obtener el total de unidades vendidas durante el presente mes. Para eso se tiene como dato de entrada un arreglo con la cantidad de unidades vendidas por cada agente comercial.

b)  Si se sabe que la cuota de venta de cada vendedor es 5 unidades, determinar cuál es el porcentaje de vendedores que superaron la cuota de venta. Para eso se tiene como dato de entrada un arreglo con la cantidad de unidades vendidas por cada agente comercial.

c)  Se desea saber quién(es) fueron los agentes de ventas que superaron la cuota de venta.

d)  Si se sabe que por cada unidad vendida se tiene que pagar una comisión de ventas de 300 soles, determinar cuánto es lo que se tiene que pagar como comisión este mes.


=end


def obtenerTotalVentas(ventas)
	suma = 0
  for i in 0..ventas.size - 1
    suma += ventas[i] 
  end
  suma
end    

def obtenerPorcentajeSuperoCuota(ventas)
  contador = 0.0
	for i in 0..ventas.size - 1
    if ventas[i] >= 5
      contador += 1
    end
  end 
  (contador / ventas.size * 100).round(2)
end

def obtenerVendedoresSuperaronCuota(ventas,vendedores)
  nombres = []
  for i in 0..ventas.size - 1
    if ventas[i] >= 5
      nombres << vendedores[i]
    end
  end 
  nombres
end

def determinarComisionPagar(ventas)
  obtenerTotalVentas(ventas) * 300
end

#--- zona de test ----

def test_obtenerTotalVentas
  print validate(49,obtenerTotalVentas(@ventas1))
  print validate(64,obtenerTotalVentas(@ventas2))
end

def test_obtenerPorcentajeSuperoCuota
  print validate(71.43,obtenerPorcentajeSuperoCuota(@ventas1))
  print validate(57.14,obtenerPorcentajeSuperoCuota(@ventas2))
end

def test_obtenerVendedoresSuperaronCuota
   print validate(["Hugo","Paco","Luis","Mario","David"],obtenerVendedoresSuperaronCuota(@ventas1,@vendedores1))
   print validate(["Roxana","Mariana","Valeria","Susan"],obtenerVendedoresSuperaronCuota(@ventas2,@vendedores2))  
end

def test_determinarComisionPagar
   print validate(14700,determinarComisionPagar(@ventas1))
   print validate(19200,determinarComisionPagar(@ventas2))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  
  @ventas1 = [10,6,14,7,4,5,3]
  @ventas2 = [15,16,1,0,4,15,13]

  @vendedores1 = ["Hugo","Paco","Luis","Mario","Jorge","David","Manuel"]
  @vendedores2 = ["Roxana","Mariana","Daphne","Jennifer","Lilia","Valeria","Susan"]
  
  puts "---------------------------"
  test_obtenerTotalVentas
  test_obtenerPorcentajeSuperoCuota
  test_obtenerVendedoresSuperaronCuota
  test_determinarComisionPagar
  puts " "
end
test
