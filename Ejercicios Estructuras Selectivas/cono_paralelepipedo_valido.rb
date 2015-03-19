=begin
Una empresa de alimentos desea producir envases para pop 
corn con forma de paralelepípedo recto y de cono recto y que 
las medidas de los envases cumplan con los estándares de 
contenidos establecidos por la empresa. Dichos estándares 
indican que el contenido debe estar entre 500cm3 y 1200cm3. 
En caso de salir de dichas medidas el envase no será admitido. 
Si no se admite debe indicar “VALIDO” y si no lo es debe indicar 
“NO VALIDO”.

Para encontrar el volumen del paralelepípedo se aplica la 
fórmula V= a * b * c. Donde a, b y c son cada uno de los 
lados del paralelepípedo. 

Para encontrar el volumen del cono se aplica la fórmula 
V= (pi* r2 * h) /3

	
=end
def determinarvalido(tipo,a,b,c,r,h)
  if tipo == "cono"
  	volumen = (3.1415 * r ** 2 * h) / 3
  else
    volumen = a * b * c 
  end
  if volumen >= 500 && volumen <= 1200
    "VALIDO"
  else
  	"NO VALIDO"
  end
end

#--- zona de test ----

def test_determinarvalido
    print validate("VALIDO", determinarvalido("paralelepipedo",10.0,12.0,5.0,0.0,0.0)) 
    print validate("VALIDO", determinarvalido("cono",0.0,0.0,0.0,8.0,8.0)) 
    print validate("VALIDO", determinarvalido("cono",0.0,0.0,0.0,9.0,9.0)) 
    print validate("NO VALIDO", determinarvalido("cono",0.0,0.0,0.0,19.0,10.0)) 
    print validate("NO VALIDO", determinarvalido("paralelepipedo",20.0,30.0,50.0,0.0,0.0))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_determinarvalido
  puts " "
end
test
