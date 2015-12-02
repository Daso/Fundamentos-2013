=begin 
Pregunta 1

Un centro de estudios pre-universitario quiere implementar una formar de validar las soluciones de los ejercicios propuestos de uno de los temas que se enseñan en clases. El tema elegido es el manejo de los conjuntos numéricos. Como bien sabemos, dentro de la teoría de los conjuntos podemos realizar tres operaciones básicas entre dos grupos de objetos, nuestros ejemplos van a utilizar grupos numéricos. 

La primera operación que se desea validar es la unión, esta operación nos permite unir dos grupos para formar un tercer nuevo grupo donde se consideren los miembros de ambos grupos pero sin repetir ninguno de los números.
 
La segunda operación es la intersección, en esta operación el resultado debe ser un tercer nuevo grupo donde solo se deben considerar los números de los grupos que se repiten entre ellos.
 
La tercera operación es la Diferencia, es en esta operación donde el resultado es un tercer nuevo grupo con los miembros del primero grupo que no estén dentro del segundo grupo.
 
1.  Se solicita desarrollar un programa que permita obtener la unión de dos conjuntos.
2.  Se solicita desarrollar un programa que permita obtener la intersección de dos conjuntos
3.  Se solicita desarrollar un programa que permita obtener la diferencia de dos conjuntos.

=end

def union_conjuntos(conjuntoA, conjuntoB)
  arreglo1 = conjuntoA.sort
  arreglo2 = conjuntoB.sort
  igual = false
  for x in 0...arreglo1.size
    igual = false
    for i in 0...arreglo2.size
      if arreglo2[x] == arreglo1[i]
         igual = true
      end
    end  
    if igual == false
      arreglo1 << arreglo2[x]
    end  
  end
  arreglo1.sort
end
    
def diferencia_conjuntos(conjuntoA, conjuntoB)
	arreglo1 = conjuntoA.sort
  arreglo2 = conjuntoB.sort
  resultado = []
  igual = false
  for x in 0...arreglo2.size
    igual = false
    for i in 0...arreglo1.size
      if arreglo1[x] == arreglo2[i]
         igual = true
      end
    end  
    if igual == false
      resultado << arreglo1[x]
    end  
  end
  resultado.sort
end
    
def interseccion_conjuntos(conjuntoA,conjuntoB)
arreglo1 = conjuntoA.sort
  arreglo2 = conjuntoB.sort
  resultado = []
  igual = false
  for x in 0...arreglo2.size
    igual = false
    for i in 0...arreglo1.size
      if arreglo1[x] == arreglo2[i]
         igual = true
      end
    end  
    if igual == true
      resultado << arreglo1[x]
    end  
  end
  resultado.sort
end

#----------Zona de Test------------------
  @conjunto1A = [5,8,9,3,2]
  @conjunto1B = [6,7,3,4,9]
  @conjunto2A = [1,5,3,7,6]
  @conjunto2B = [6,4,9,1,3]
  @conjunto3A = [4,8,6,3,7]
  @conjunto3B = [1,7,3,9,8]

def test_union_conjuntos
  print validate([2,3,4,5,6,7,8,9], union_conjuntos(@conjunto1A,@conjunto1B))
  print validate([1,3,4,5,6,7,9], union_conjuntos(@conjunto2A,@conjunto2B))
  print validate([1,3,4,6,7,8,9], union_conjuntos(@conjunto3A,@conjunto3B))
end
    
def test_diferencia_conjuntos
  print validate([2,5,8], diferencia_conjuntos(@conjunto1A,@conjunto1B))
  print validate([5,7], diferencia_conjuntos(@conjunto2A,@conjunto2B))
  print validate([4,6], diferencia_conjuntos(@conjunto3A,@conjunto3B))
end

def test_interseccion_conjuntos
  #@conjunto1A = [5,8,9,3,2]
  #@conjunto1B = [6,7,3,4,9]
  print validate([3,9], interseccion_conjuntos(@conjunto1A,@conjunto1B))
  print validate([1,3,6], interseccion_conjuntos(@conjunto2A,@conjunto2B))
  print validate([3,7,8], interseccion_conjuntos(@conjunto3A,@conjunto3B))
end   
    
def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_union_conjuntos
  puts " "
  test_diferencia_conjuntos
  puts " "
  test_interseccion_conjuntos
  puts " "
end

test
