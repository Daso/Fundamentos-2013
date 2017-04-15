#encoding:UTF-8
def obtenerPrecioModeloAntiguedad(modelo,antiguedad)
	case modelo
		when "Sedan"
			if antiguedad >= 7
				return 630.50
			elsif antiguedad >= 3
				return 400.50
			else
				return 250.00
			end
		when "Deportivo"
			if antiguedad >= 7
				return 730.50
			elsif antiguedad >= 3
				return 450.50
			else
				return 350.00
			end
			
		when "SUV"
			if antiguedad >= 3
				return 840.50
			else
				return 650.00
			end
		else
			return 0.00
	end
end

def obtenerPorcentajeCalificacion(calificacion)
	case calificacion
		when "A"
			return 0.0
		when "B"
			return 0.20
		when "C"
			return 0.25
		when "D"
			return 0.40
		else
			return 0.0
	end
end


def calcularTotal(modelo,antiguedad,calificacion,tiempoPermiso)
	porcPermiso = 0.0
	
	if tiempoPermiso < 2 then
		porcPermiso = 0.10
	end
	
	return ((obtenerPrecioModeloAntiguedad(modelo,antiguedad)*(1+obtenerPorcentajeCalificacion(calificacion)))*(1+porcPermiso)).round(2)
end

#--- zona de test ----

def test_obtenerPrecioModeloAntiguedad   
    	print validate(250.00, obtenerPrecioModeloAntiguedad("Sedan",2))
    	print validate(400.50, obtenerPrecioModeloAntiguedad("Sedan",4))
    	print validate(630.50, obtenerPrecioModeloAntiguedad("Sedan",9))
    	print validate(350.00, obtenerPrecioModeloAntiguedad("Deportivo",1))
    	print validate(450.50, obtenerPrecioModeloAntiguedad("Deportivo",3))
    	print validate(730.50, obtenerPrecioModeloAntiguedad("Deportivo",7))
    	print validate(650.00, obtenerPrecioModeloAntiguedad("SUV",2))
    	print validate(840.50, obtenerPrecioModeloAntiguedad("SUV",5))
    	print validate(0.00, obtenerPrecioModeloAntiguedad("Camioneta",5))
end

def test_obtenerPorcentajeCalificacion
    	print validate(0.00, obtenerPorcentajeCalificacion("A")) 
    	print validate(0.20, obtenerPorcentajeCalificacion("B")) 
    	print validate(0.25, obtenerPorcentajeCalificacion("C")) 
    	print validate(0.40, obtenerPorcentajeCalificacion("D")) 
end

def test_calcularTotal
   	print validate(250.00, calcularTotal("Sedan",2,"A",5))
   	print validate(440.55, calcularTotal("Sedan",4,"A",1))
   	print validate(420.00, calcularTotal("Deportivo",1,"B",3))
   	print validate(1004.44, calcularTotal("Deportivo",7,"C",1))
   	print validate(1294.37, calcularTotal("SUV",5,"D",1))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_obtenerPrecioModeloAntiguedad
  puts " "
  test_obtenerPorcentajeCalificacion
  puts " "
  test_calcularTotal
  puts " "
end
test
