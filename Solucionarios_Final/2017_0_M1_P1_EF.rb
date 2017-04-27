=begin
Pregunta 1 (10 puntos)

Se han registrado las temperaturas promedios en el mes de Enero de ciertas ciudades. 

Desarrollar los siguientes módulos:
a.	Módulo para obtener la ciudad que tuvo la mayor temperatura promedio.
b.	Módulo para calcular el promedio de todas las temperaturas registradas.. 
c.	Módulo para obtener las ciudades que tienen las temperaturas mas altas que el promedio obtenido en la pregunta anterior. 
=end


def obtener_MayorTemperatura(temperaturas,ciudades)
    mayor=temperaturas[0]
	j=0
	for i in 0...temperaturas.size
		if mayor<temperaturas[i]
            mayor=temperaturas[i]
            j=i
        end
	end
    return ciudades[j]
  
end
    
def calcular_promedioTemperaturas(temperaturas)
	suma = 0.0
	for i in 0...temperaturas.size
		suma= suma+temperaturas[i]
	end
    promedio=suma/temperaturas.size

    return promedio.round(2)
end
    
def calcular_ciudadesCalurosas(temperaturas,ciudades)
    promedio=calcular_promedioTemperaturas(temperaturas)
    ccalurosas=[]
    for i in 0...temperaturas.size
        if temperaturas[i] > promedio
           ccalurosas << ciudades[i]
        end
    end
	return ccalurosas

end


#----------Zona de Test------------------

def test_obtener_MayorTemperatura
  ciudades=["Lima","Ica","Piura","Tumbes","Puno","Arequipa","Chiclayo"]
  temperaturas1= [25.6,33.3,38.5,39.6,18.3,19.6,27.9]
  temperaturas2= [21.3,30.5,32.6,26.1,16.7,22.9,25.3]
  temperaturas3= [35.2,25.4,33.8,25.6,19.3,28.2,23.5]
  
print validate("Tumbes", obtener_MayorTemperatura(temperaturas1,ciudades))
  print validate("Piura", obtener_MayorTemperatura(temperaturas2,ciudades))
  print validate("Lima", obtener_MayorTemperatura(temperaturas3,ciudades))
end
    
def test_calcular_promedioTemperaturas
	
     temperaturas1= [25.6,33.3,38.5,39.6,18.3,19.6,27.9]
  temperaturas2= [21.3,30.5,32.6,26.1,16.7,22.9,25.3]
  temperaturas3= [35.2,25.4,33.8,25.6,19.3,28.2,23.5]

    print validate(28.97, calcular_promedioTemperaturas(temperaturas1))
    print validate(25.06, calcular_promedioTemperaturas(temperaturas2))
    print validate(27.29, calcular_promedioTemperaturas(temperaturas3))
end

 def test_calcular_ciudadesCalurosas
 
  ciudades=["Lima","Ica","Piura","Tumbes","Puno","Arequipa","Chiclayo"]
  temperaturas1= [25.6,33.3,38.5,39.6,18.3,19.6,27.9]
  temperaturas2= [19.3,20.5,32.6,26.1,16.7,22.9,25.3]
  temperaturas3= [35.2,25.4,33.8,25.6,19.3,28.2,23.5]
	
    print validate(["Ica", "Piura","Tumbes"], calcular_ciudadesCalurosas(temperaturas1,ciudades))
    print validate(["Piura","Tumbes","Chiclayo"], calcular_ciudadesCalurosas(temperaturas2,ciudades))
print validate(["Lima","Piura","Arequipa"], calcular_ciudadesCalurosas(temperaturas3,ciudades))
	
 end   
    
def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_obtener_MayorTemperatura
  puts
  test_calcular_promedioTemperaturas
  puts
  test_calcular_ciudadesCalurosas
  puts " "
end

test
