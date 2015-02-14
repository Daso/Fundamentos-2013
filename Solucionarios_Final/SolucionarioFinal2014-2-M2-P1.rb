=begin
1.- Tienda de libros

La tienda de libros Bookbook necesita una aplicación que les permita determinar las preferencias de sus seguidores según lo publicado en su página web. Para ello, se ha creado un mecanismo que determina la preferencia de los usuarios mediante estrellas que ellos marcan según la siguiente tabla:

Nro estrellas Definición
1 No me gusta
2 Me gusta poco
3 Me gusta
4 Me gusta un poco
5 Me gusta mucho

Se le pide lo siguiente:

- Desarrollar un subprograma que determine ¿Cuál es el libro o libros (en caso ser más de uno) que les gusta mucho a la gente?
- Desarrollar un subprograma que determine ¿Cuál es el porcentaje de libros con tres estrellas del total de libros publicados?
- Desarrollar un subprograma que permita buscar cuantas estrellas tiene un libro. Se le debe ubicar por su nombre que figura en la lista de libros que tiene la tienda.


=end
def buscarMejoresLibros(estrellas,libros)
  arreglo = []
  for i in 0...libros.size
    if estrellas[i] == 5
      arreglo.push(libros[i])
    end
  end
  return arreglo
end
    
def calcularporcentajegusta(estrellas)
  contador = 0.0
  for i in 0...estrellas.size
    if estrellas[i] == 3
      contador += 1
    end
  end
  return (contador / estrellas.size * 100.0).round(2)
end
    
def buscarEstrellasLibroPorNombre(estrellas,libros,nombrebuscar)
  indice = 0
  for i in 0...libros.size
    if libros[i] == nombrebuscar
      indice = i
    end
  end
  return estrellas[indice]
end

#----------Zona de Test------------------


def test_buscarMejoresLibros
  estrellas1 = [1,3,5,3,4,2]
  estrellas2 = [1,2,3,5,1,2]
  estrellas3 = [1,2,3,4,5,5]

  libros1 = ["Don Juan","Caminando","Proezas de Jose","Alicante","Cusco","Lo mejor de mi"]
  libros2 = ["Talisman","El Gato Pardo","Alfredo en Lima","Ponte Mosca","La chica dorada","Dominico"]
  libros3 = ["Panda y Panda","Kryptonita","Me gusta dormir","Cenando en Cancun","Viaje por el caribe","Dimelo"]  
  print validate(["Proezas de Jose"], buscarMejoresLibros(estrellas1,libros1))
  print validate(["Ponte Mosca"], buscarMejoresLibros(estrellas2,libros2))
  print validate(["Viaje por el caribe","Dimelo"], buscarMejoresLibros(estrellas3,libros3))
end
    
def test_calcularporcentajegusta
	estrellas1 = [1,3,5,3,4,2]
	estrellas2 = [2,2,3,5,1,2]
	estrellas3 = [1,2,3,4,5,5]

    print validate(33.33, calcularporcentajegusta(estrellas1))
    print validate(16.67, calcularporcentajegusta(estrellas2))
    print validate(16.67, calcularporcentajegusta(estrellas3))
end

 def test_buscarEstrellasLibroPorNombre
  estrellas1 = [1,3,5,3,4,2]
  estrellas2 = [1,2,3,5,1,2]
  estrellas3 = [1,2,3,4,5,5]

  libros1 = ["Don Juan","Caminando","Proezas de Jose","Alicante","Cusco","Lo mejor de mi"]
  libros2 = ["Talisman","El Gato Pardo","Alfredo en Lima","Ponte Mosca","La chica dorada","Dominico"]
  libros3 = ["Panda y Panda","Kryptonita","Me gusta dormir","Cenando en Cancun","Viaje por el caribe","Dimelo"]  

       print validate(3, buscarEstrellasLibroPorNombre(estrellas1,libros1,"Alicante"))
       print validate(5, buscarEstrellasLibroPorNombre(estrellas2,libros2,"Ponte Mosca"))
       print validate(5, buscarEstrellasLibroPorNombre(estrellas3,libros3,"Viaje por el caribe"))
 end   
    

#----------------zona de test-----------------

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_buscarMejoresLibros
  puts " "
  test_calcularporcentajegusta
  puts " "
  test_buscarEstrellasLibroPorNombre
  puts " "
end

test
