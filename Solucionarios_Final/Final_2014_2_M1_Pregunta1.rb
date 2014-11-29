=begin
En una granja se requiere saber alguna información para determinar el precio de venta por cada kilo de huevo. Es importante determinar el promedio de calidad de las n gallinas que hay en la granja. La calidad de cada gallina se obtiene según la formula:

		calidad =  peso de la gallina * altura de la gallina * numero de huevos que pone

			      
Finalmente para fijar el precio del kilo de huevo, se toma como base la siguiente tabla:

	RANGO DE CALIDAD			PRECIO DE KILO DE HUEVO
	mayor o igual que 15			1.2 * promedio de calidad
	mayor que 8 y menor que 15		1.00 * promedio de calidad
	menor o igual que 8			    0.80 * promedio de calidad

Con los datos obtenidos se solicita lo siguiente:
1. Determinar cual es la calidad de una gallina.
2. Determinar cual es la calidad de una muestra.
3. Determinar cual es el precio del kilo de huevos de una muestra de gallinas.

=end

def calcularCalidadGallina(peso, altura, huevos)
  return (peso * altura * huevos).round(2)
end
    
def calcularCalidadGranja(pesos, alturas, huevos)
  calidad = 0
  for i in 0...pesos.length
    calidad = calidad + calcularCalidadGallina(pesos[i], alturas[i], huevos[i])
  end
  return calidad / pesos.length
end
    
def determinarPrecio(pesos, alturas, huevos)
  calidad_granja =   calcularCalidadGranja(pesos, alturas, huevos)  
  case calidad_granja
    when 0..8 
	  (calidad_granja * 0.8).round(2)
    when 9..14
	  (calidad_granja * 1.00).round(2)
    else
	  (calidad_granja * 1.2).round(2)
  end	
end
    
#----------Zona de Test------------------

def probarCalcularCalidadGallina
    print validate(7.74, calcularCalidadGallina(8.6,0.45,2))
    print validate(5.32, calcularCalidadGallina(7.6,0.35,2))
    print validate(3.50, calcularCalidadGallina(9.2,0.38,1))
end

def probarCalcularCalidadGranja
    print validate(9.01, calcularCalidadGranja(@peso1, @altura1, @huevo1))
    print validate(10.29, calcularCalidadGranja(@peso2, @altura2, @huevo2))
    print validate(4.99, calcularCalidadGranja(@peso3, @altura3, @huevo3))
end

def probarDeterminarPrecio
    print validate(9.01, determinarPrecio(@peso1, @altura1, @huevo1))
    print validate(10.29, determinarPrecio(@peso2, @altura2, @huevo2))
    print validate(3.99, determinarPrecio(@peso3, @altura3, @huevo3))
end
 
#----------------zona de test-----------------

@peso1 =[8.60,7.22,6.63,9.54]
@peso2 =[7.50,6.99,8.88,9.54]
@peso3 =[9.88,9.45,6.77,7.21]

@altura1 =[0.45,0.46,0.47,0.43]
@altura2 =[0.55,0.56,0.57,0.53]
@altura3 =[0.35,0.36,0.37,0.33]

@huevo1 =[2,2,3,3]
@huevo2 =[1,3,3,2]
@huevo3 =[2,1,1,3]


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  probarCalcularCalidadGallina
  probarCalcularCalidadGranja
  probarDeterminarPrecio
  puts " "
end

test
