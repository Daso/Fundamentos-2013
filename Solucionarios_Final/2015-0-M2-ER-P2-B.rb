=begin 

Números Romanos

Para que los cálculos resultasen más fáciles, los romanos solían utilizar una 
notación aditiva pura. Un número romano en esta notación era una cadena de 
dígitos, comenzando por el dígito del valor más alto y terminando con el de 
valor más pequeño, y su valor se obtenía simplemente como la suma de sus dígitos 
(en esta notación, por ejemplo, el número arábigo 19 se representaba XVIIII).

a)  Escribe el subprograma esRomano? que reciba una cadena de caracteres y 
devuelva un valor de true que indique si la cadena leída se puede interpretar 
como un número romano válido en notación aditiva pura. En caso alguno de los 
valores no sea un carácter válido entonces devolverá false

b)  Escribe el subprograma romanoAEntero que convierta un número romano a arábigo
 en caso de ser válido el número romano. En caso de no ser un valor válido 
 retornar 0

Así, por ejemplo, si tenemos el número romano MDCCCCLXXXVIIII el primer 
subprograma debe devolver true y el segundo subprograma el número arábigo 
1989 respectivamente. En cambio, si se envía XXZPI, los subprogramas deben 
devolver un valor que indica que no es un número romano válido (false) y 0 
como resultado del número transformado a arábigo.

NOTA: la cadena no se podrá interpretar como número romano si contiene algún 
carácter que no sea un dígito romano. Recuerda que los dígitos romanos y sus 
valores correspondientes son: 
I = 1; V = 5; X =10; L = 50; C = 100; D = 500; M = 1000.

=end
def esRomano?(numeroRomano,caracteresPermitidos)
   resultado = ""
   for i in 0...numeroRomano.size
     for n in 0...caracteresPermitidos.size
      if numeroRomano[i] == caracteresPermitidos[n]
        resultado += numeroRomano[i]
      end
     end
   end
   if resultado == numeroRomano
    return true
   else
    return false
   end
end
    
def romanoAEntero(numeroRomano,caracteresPermitidos)
  numero = 0
  if esRomano?(numeroRomano,caracteresPermitidos)
    for i in 0...numeroRomano.size
      case numeroRomano[i]
      when "I"
        numero = numero + 1
      when "V" 
        numero = numero + 5
      when "X"
        numero = numero + 10
      when "L"
        numero = numero + 50
      when "C"
        numero = numero + 100
      when "D"
        numero = numero + 500
      when "M"
        numero = numero + 1000
      end 
    end
    numero
  else
   0
  end 
end

#----------Zona de Test------------------

def test_esRomano?
  print validate(true, esRomano?("XVIII",@caracteresPermitidos))
  print validate(false, esRomano?("MDYC",@caracteresPermitidos))
  print validate(false, esRomano?("LXXVIF",@caracteresPermitidos))
  print validate(true, esRomano?("LXXVII",@caracteresPermitidos))
end
    
def test_romanoAEntero
  print validate(1989, romanoAEntero("MDCCCCLXXXVIIII",@caracteresPermitidos))
    print validate(0, romanoAEntero("MDYC",@caracteresPermitidos))
  print validate(87, romanoAEntero("LXXXVII",@caracteresPermitidos))
  print validate(2778, romanoAEntero("MMDCCLXXVIII",@caracteresPermitidos))
end

#----------------zona de test-----------------

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  @caracteresPermitidos = ["I","V","X","L","C","D","M"]
    
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_esRomano?
  puts " "
  test_romanoAEntero
  puts " "
end
test
