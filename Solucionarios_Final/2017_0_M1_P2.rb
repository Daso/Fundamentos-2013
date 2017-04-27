=begin

Pregunta 2 (10 puntos)

El Instituto Peruano de Seguridad Social, registra a sus asegurados por medio de un codigo autogenerado.
Este codigo está compuesto de 15 caracteres entre letras y digitos. El formato es el siguiente
•	AAMMDD  (año, mes y dia)
•	Un digito
•	Primera y cuarta letra del apellido paterno
•	Primera y cuarta letra del apellido materno
•	primera letra del nombre
•	3 digitos

Ejemplo  6002251GVTRM005

Desarrollar los siguientes módulos:
a.	Módulo que determine cuantas personas nacieron en un kmes determinado?
b.	Módulo que determine cuantos codigos coinciden con un apellido paterno especifico?
c.	Modulo que determine cuantos codigos autogenerados no terminan en numero? 
 
=end

def calcular_PersonasMesNacimiento(codigos,mes)
    cantidad=0
    for i in 0...codigos.size
        if mes == codigos[i][2..3]
            cantidad=cantidad+1
        end
	end
    return cantidad
  
end
    
def calcular_coincidenApellido(codigos,apellido)
	cantidad=0
    for i in 0...codigos.size
        if apellido[0]+apellido[3] == codigos[i][7..8]
            cantidad=cantidad+1
        end
	end
    return cantidad
end
    
def calcular_codigosNoTerminanenDigito(codigos)
	cantidad=0
    cantidad1=0
    for i in 0...codigos.size
        case codigos[i][codigos[i].size-1]
        when "0","1","2","3","4","5","6","7","8","9"
            cantidad1=cantidad1+1
        else
            cantidad=cantidad+1
        end
	end
    return cantidad
end


#----------Zona de Test------------------

def test_calcular_PersonasMesNacimiento
  
    codigos1= ["6007051MIVlP005","6201010NZHRJ001","8905141SLPTL002","9307141LZMDC003","0105100RECTI004"]
    codigos2= ["6007051MIVlP005","6201010NZHRJ001","8905141SLPTL002","9301221LZMDC003","0101100RECTI004"]
    codigos3= ["6012051MIVlP005","6201010NZHRJ001","8912141SLPTL002","9305141LZMDC003","0112100RECTI004"]
   
  print validate(2, calcular_PersonasMesNacimiento(codigos1,"07"))
  print validate(3, calcular_PersonasMesNacimiento(codigos2,"01"))
  print validate(3, calcular_PersonasMesNacimiento(codigos3,"12"))
end
    
def test_calcular_coincidenApellido
	codigos1= ["6007051MIVlP005","6201010NZHRJ001","8905141SLPTL002","9307141LEMDC003","0105100RECTI004"]
    codigos2= ["6007051RJVlP005","6201010NZHRJ001","8905141SLPTL002","9301221LZMDC003","0101100RJCTI004"]
    codigos3= ["6012051MIVlP005","6201010NZHRJ001","8912141SLPTL002","9305141LZMDC003","0112100RECTI004"]

    print validate(1, calcular_coincidenApellido(codigos1,"LOPEZ"))
    print validate(0, calcular_coincidenApellido(codigos2,"ROJAS"))
    print validate(1, calcular_coincidenApellido(codigos3,"MOLINA"))
end

 def test_calcular_codigosNoTerminanenDigito
 
    codigos1= ["6007051MIVlP00A","6201010NZHRJ001","8905141SLPTL00B","9307141LZMDC003","0105100RECTI004"]
    codigos2= ["6007051MIVlP005","6201010NZHRJ001","8905141SLPTL00C","9301221LZMDC00D","0101100RECTI004"]
    codigos3= ["6012051MIVlP005","6201010NZHRJ00B","8912141SLPTL002","9305141LZMDC00F","0112100RECTI00E"]
	
    print validate(2, calcular_codigosNoTerminanenDigito(codigos1))
    print validate(2, calcular_codigosNoTerminanenDigito(codigos2))
    print validate(3, calcular_codigosNoTerminanenDigito(codigos3))
	
 end   
    
def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcular_PersonasMesNacimiento
  puts
  test_calcular_coincidenApellido
  puts
  test_calcular_codigosNoTerminanenDigito
  puts " "
end

test
