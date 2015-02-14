#encoding:utf-8
=begin
Fábrica de rollos

En una fábrica de rollos de plástico se realiza un trabajo especial de etiquetado que consiste en generar pegar una etiquete de color dependiendo del último dígito del código del producto. El código del producto tiene la siguiente la siguiente estructura: XYZ123 y los colores de las etiquetas se determinan de acuerdo a la siguiente tabla:

Último Dígito Color
1 o 2 Amarillo
3 o 4 Rosa
5 o 6 Rojo
7 o 8 Verde
9 o 0 Azul

Se le solicita lo siguiente:
- Determinar el porcentaje de rollos que presentan etiqueta de color rojo
- Determinar el número de rollos cuyos códigos terminan entre los dígitos 4 y 7
- Devolver un listado con los códigos de todos aquellos rollos que tengan etiqueta azul

=end
def calcularporcentajeEtiquetas(etiquetas)
  contador = 0.0
  for i in 0...etiquetas.size
    if etiquetas[i][5] == "5" || etiquetas[i][5] == "6"      
      contador += 1
    end
  end
  return (contador / etiquetas.size).round(2)
end
	
def calcularRollosespeciales(etiquetas)
  contador = 0
  for i in 0...etiquetas.size
     if etiquetas[i][5].to_i >= 4 && etiquetas[i][5].to_i <= 7
      contador += 1
    end
  end
  return contador
end

def calcularEtiquetasAzul(etiquetas)
  arreglo = []
  puts arreglo
  for i in 0...etiquetas.size
    if etiquetas[i][5].to_i == 9 || etiquetas[i][5].to_i == 0
      arreglo.push(etiquetas[i])
    end
  end
  return arreglo
end
    

#----------Zona de Test------------------

def test_calcularporcentajeEtiquetas
  etiquetas1 = ["CXC123","XGX837","FUR923","BCC623","PSR998","WWR836"]  
  etiquetas2 = ["XYZ930","XUE844","THI934","XXC123","WWW333","XWX923"]  
  etiquetas3 = ["XGX125","XGX838","GUR929","VVS611","FFR977","RWQ845"] 
  print validate(0.17, calcularporcentajeEtiquetas(etiquetas1))
  print validate(0.00, calcularporcentajeEtiquetas(etiquetas2))
  print validate(0.33, calcularporcentajeEtiquetas(etiquetas3))
end
    
def test_calcularRollosespeciales
  etiquetas1 = ["CXC123","XGX837","FUR923","BCC623","PSR998","WWR836"]  
  etiquetas2 = ["XYZ930","XUE844","THI934","XXC123","WWW333","XWX923"]  
  etiquetas3 = ["XGX125","XGX838","GUR929","VVS611","FFR977","RWQ845"] 
  print validate(2, calcularRollosespeciales(etiquetas1))
  print validate(2, calcularRollosespeciales(etiquetas2))
  print validate(3, calcularRollosespeciales(etiquetas3))
end

def test_calcularEtiquetasAzul
  etiquetas1 = ["CXC123","XGX837","FUR929","BCC623","PSR998","WWR836"]  
  etiquetas2 = ["XYZ930","XUE844","THI934","XXC123","WWW333","XWX923"]  
  etiquetas3 = ["XGX125","XGX838","GUR929","VVS611","FFR977","RWQ849"] 

  print validate(["FUR929"], calcularEtiquetasAzul(etiquetas1))
  print validate(["XYZ930"], calcularEtiquetasAzul(etiquetas2))
  print validate(["GUR929","RWQ849"], calcularEtiquetasAzul(etiquetas3))
end   
    
#----------------zona de test-----------------


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularporcentajeEtiquetas
  puts " "
  test_calcularRollosespeciales
  puts " "  
  test_calcularEtiquetasAzul
  puts " "
end

test
