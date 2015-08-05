=begin
1.	Ventas Acumuladas (10 puntos)

Una empresa de importación y ventas de productos orientados a la industria necesita calcular el nivel de las ventas de sus productos por las diferentes categorías asociadas. Estas ventas están registradas por producto y separadas mensualmente.

Las categorías son las siguientes:

Código	Categoría
NEU	Neumática
HID	Hidráulica
SEN	Sensores
END	END
OTR	Otros

Se solicita lo siguiente:

a)	Un subprograma que pueda calcular las ventas acumuladas por una categoría específica.
b)	Un subprograma que pueda indicar la categoría con una mayor productividad.


=end

def obtenerVentasCategoria(listaVentasProductos,listaCategorias,categoria)
  suma = 0 
  for i in 0...listaCategorias.size
    if listaCategorias[i] == categoria
	  suma += listaVentasProductos[i]
    end
  end
  suma.round(2)
end
    
def obtenerMejorCategoria(listaCategorias,ventasMensuales)
  mayor = ventasMensuales[0]
  pos = 0
  mejores = []
  for i in 0...listaCategorias.size
    if ventasMensuales[i] > mayor
	  mayor = ventasMensuales[i]
	  pos = i	  
	end
  end  
   mejores << listaCategorias[pos]
   return mejores
end

#----------Zona de Test------------------

def test_obtenerVentasCategoria
  categorias1 = ["NEU","HID","NEU","SEN","HID","OTR","END","END","OTR"]
  ventaProductos1 = [194.50, 135.60, 221.65, 115.90, 87.80, 123.20, 376.10, 232.65, 143.90]

  categorias2 = ["HID","HID","NEU","OTR","SEN","HID","END","NEU","HID"]
  ventaProductos2 = [149.45, 115.26, 242.54, 151.00, 187.80, 133.50, 361.60, 322.52, 314.39]

  categorias3 = ["SEN","OTR","HID","NEU","END","HID","SEN","END","NEU"]
  ventaProductos3 = [154.44, 185.60, 278.90, 358.43, 372.21, 338.25, 211.78, 342.15, 248.75]
  
  print validate(416.15, obtenerVentasCategoria(ventaProductos1,categorias1,"NEU"))
  print validate(712.60, obtenerVentasCategoria(ventaProductos2,categorias2,"HID"))
  print validate(366.22, obtenerVentasCategoria(ventaProductos3,categorias3,"SEN"))

end
    
def test_obtenerMejorCategoria
 	ventas1 = [4145.33,3142.65,3154.23,4122.98,3114.13]
	categorias1 = ["NEU","HID","SEN","ENS","OTR"]
	ventas2 = [3130.54,3124.69,2143.37,3154.87,4134.82]
	categorias2 = ["NEU","HID","SEN","ENS","OTR"]
	ventas3 = [2135.95,3110.37,2132.74,3321.32,3129.59]
	categorias3 = ["NEU","HID","SEN","ENS","OTR"]
	
  print validate(["NEU"], obtenerMejorCategoria(categorias1, ventas1))
  print validate(["OTR"], obtenerMejorCategoria(categorias2, ventas2))
  print validate(["ENS"], obtenerMejorCategoria(categorias3, ventas3))
end   
    
def validate (expected, value)
  expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_obtenerVentasCategoria
  puts " "
  test_obtenerMejorCategoria
  puts " "
end

test
