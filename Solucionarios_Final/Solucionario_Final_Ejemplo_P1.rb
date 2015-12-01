=begin
1.- Encuestadora

La encuestadora Upsos desea realizar un programa que le permita analizar ciertos datos de una población. Para esto ha recolectado una base de datos que le permitirá realizar esta labor con su ayuda.
Se tienen 4 arreglos que contienen los siguientes datos: nombre, edad, sexo, documentos
Se pide:
a)	Determinar la cantidad de hombres cuya edad sea mayor a 40.
b)	Dado el número de DNI, obtener el nombre de dicho ciudadano.
c)	Dado un nombre, determinar cuántos homónimos tiene dicho ciudadano.
d)	Determinar cuántos ciudadanos tienen la coincidencia de que su edad se encuentre en alguna parte de su número de documento. Por ejemplo si un ciudadano tiene su número de documento 42264954 y tiene 26 años, entonces cumple con la condición de coincidencia.
	
 
=end
	
end

def hombresMayor40(listaEdades, listaSexos)
  contador = 0
  for i in 0...listaEdades.size
    if listaEdades[i] > 40 &&  listaSexos[i] == 'M'
      contador += 1
    end
  end	
  contador
end

def obtenerNombre(dni, listaDocumentos, listaNombres)
  nombre = ""
  for i in 0...listaDocumentos.size
    if listaDocumentos[i] ==  dni
      nombre = listaNombres[i]
    end 
  end	
  nombre
end

def obtenerNumHomonimos(nombre, listaNombres)
  contador = 0
  for i in 0...listaNombres.size
     if listaNombres[i] == nombre
       contador += 1
     end
  end	
  contador
end

def coincidenciaEdad(documentos, edades)
  contador = 0
  for i in 0...documentos.size
  	if documentos[i][0..1] == edades[i].to_s|| 
  		documentos[i][1..2] == edades[i].to_s ||
  		documentos[i][2..3] == edades[i].to_s||
  		 documentos[i][3..4] == edades[i].to_s||
  		documentos[i][4..5] == edades[i].to_s|| 
  		documentos[i][5..6] == edades[i].to_s||
  		documentos[i][6..7] == edades[i].to_s
  		contador += 1
  	end
  end
 contador
end


#--- zona de test ----


def pregunta_1
	edades = [22,20,44,35,46]
	sexos = ['M','F','F','M','M']
	edades1 = [22,20,54,55,46]
	sexos1 = ['M','F','F','M','M']
    print validate(1, hombresMayor40(edades, sexos)) 
	print validate(2, hombresMayor40(edades1, sexos1)) 
end

def pregunta_2
	documentos = ["42264954", "45553237", "44234532", "49000021", "43612323"]
	nombres = ["Jose Ruiz", "Maria Prado", "Luz Delgado", "Mario Ruiz", "Jose Ruiz"]
    print validate("Jose Ruiz", obtenerNombre("42264954", documentos, nombres))
	print validate("Maria Prado", obtenerNombre("45553237", documentos, nombres))
end

def pregunta_3
	nombres = ["Jose Ruiz", "Maria Prado", "Luz Delgado", "Mario Ruiz", "Jose Ruiz"]
    print validate(2, obtenerNumHomonimos("Jose Ruiz",nombres))
    print validate(1, obtenerNumHomonimos("Maria Prado",nombres))
	print validate(0, obtenerNumHomonimos("Maria Salgado",nombres))
end

def pregunta_4
	documentos = ["42264954", "45553237", "44234532", "49000021", "43612323"]
	edades = [22,20,44,35,46]
	documentos1 = ["42264999", "45553777"]
	edades1 = [15,77]
	documentos2 = ["45564999", "41233777"]
	edades2 = [17,53]
    print validate(2, coincidenciaEdad(documentos, edades))
	print validate(1, coincidenciaEdad(documentos1, edades1))
	print validate(0, coincidenciaEdad(documentos2, edades2))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  pregunta_1
  pregunta_2
  pregunta_3
  pregunta_4
  puts " "
end
test
