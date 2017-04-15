=begin
Desarrolle un algoritmo para resolver el siguiente problema: 
Una fábrica de pantalones desea calcular cuál es el precio final de venta y cuánto ganará por los N pantalones que produzca con el corte de alguno de sus modelos, para esto se cuenta con la siguiente información: 
a) Tiene dos modelos A y B, tallas 30, 32 y 36 para ambos modelos. 
b) Para el modelo A se utiliza 1.50 m de tela, y para el B 1.80 m. 
c) Al modelo A se le carga 80 % del costo de la tela, por mano de obra. Al modelo B se le carga 95 % del costo de la tela, por el mismo concepto. 
d) A las tallas 32 y 36 se les carga 4 % del costo generado por mano de obra, sin importar el modelo. 
e) Cuando se realiza el corte para fabricar una prenda sólo se hace de un solo modelo y una sola talla. 
f) Finalmente, a la suma de estos costos se les carga 30%, que representa la ganancia extra de la tienda.

Se le solicita lo siguiente:
a.	Calcular el costo por pantalón				(5 puntos)
b.	Calcular la ganancia por pantalón				(2 puntos)
c.	Calcular el Precio de venta por pantalón			(3 puntos)


=end

def calcularCostos(modelo,talla, precioTela)
  if modelo == "A"
    precioTela * 1.5
  else
    precioTela * 1.8
  end
end
def calcularGanancia(modelo,talla, precioTela)
  (calcularCostos(modelo,talla, precioTela) * 0.3).round(2)
end
def calcularPrecioVenta(modelo,talla, precioTela)
  calcularCostos(modelo,talla, precioTela) + calcularGanancia(modelo,talla, precioTela) 
end

#--- zona de test ----

def test_calcularCostos
    print validate(45.00, calcularCostos("A",32,30)) 
	print validate(108.00, calcularCostos("B",36,60)) 
	print validate(75.00, calcularCostos("A",30,50)) 
	print validate(144.00, calcularCostos("B",30,80)) 
end

def test_calcularGanancia
	print validate(13.50, calcularGanancia("A",32,30))
	print validate(32.40, calcularGanancia("B",36,60))
	print validate(22.50, calcularGanancia("A",30,50))
	print validate(43.20, calcularGanancia("B",30,80))    
end

def test_calcularPrecioVenta
    print validate(58.50, calcularPrecioVenta("A",32,30)) 
	print validate(140.40, calcularPrecioVenta("B",36,60)) 
	print validate(97.50, calcularPrecioVenta("A",30,50)) 
    print validate(187.20, calcularPrecioVenta("B",30,80)) 
end



def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  puts test_calcularCostos
  puts test_calcularGanancia
  puts test_calcularPrecioVenta

  puts " "
end
test
