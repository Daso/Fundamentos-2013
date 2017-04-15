=begin
Una persona vende las tierras de su abuelo al gobierno por la cantidad de $10000. Suponga que esta persona ha colocado el dinero en una cuenta de plazo fijo que paga 1% mensual. ¿Cuánto vale su inversión, al cabo de X años?, sabiendo que el banco incrementa su tasa de interés en 0.5% cada 3 años. El importe del interés se obtiene aplicando el porcentaje del interés  al monto más los intereses 
ganados en los meses anteriores.
Se le solicita lo siguiente:

a.	Calcular el porcentaje del interés en el último mes		(5 puntos)
b.	Calcular el importe del interés ganado en el último mes (3 puntos)
c.	Calcular el importe total (incluye los intereses)	 	(2 puntos)


=end

def calcularPorcInteresUltimoMes(meses)
  1 + ((meses / 36) * 0.5)
end
def calcularImpInteresUltimoMes(meses,importe)
  tasa = 0.01
  limite = 36
  for i in 1..meses
    if i == limite
      tasa = tasa + 0.005
      limite = limite + 36
    end
    interes = importe * tasa
    importe = importe + interes
  end
  interes.round(2)
end
def calcularImporteTotalMesX(meses,importe)
  tasa = 0.01
  limite = 36
  for i in 1..meses
    if i == limite
      tasa = tasa + 0.005
      limite = limite + 36
    end
    interes = importe * tasa
    importe = importe + interes
  end
  importe.round(2)
end

#--- zona de test ----

def test_calcularPorcInteresUltimoMes
    print validate(1.00, calcularPorcInteresUltimoMes(12)) 
    print validate(1.50, calcularPorcInteresUltimoMes(36)) 
    print validate(1.50, calcularPorcInteresUltimoMes(48)) 
    print validate(2.00, calcularPorcInteresUltimoMes(80)) 
end

def test_calcularImpInteresUltimoMes
    print validate(111.57, calcularImpInteresUltimoMes(12,10000))
    print validate(212.49, calcularImpInteresUltimoMes(36,10000))
    print validate(254.06, calcularImpInteresUltimoMes(48,10000))
    print validate(567.36, calcularImpInteresUltimoMes(80,10000))    
end

def test_calcularImporteTotalMesX
    print validate(11268.25, calcularImporteTotalMesX(12,10000)) 
    print validate(14378.52, calcularImporteTotalMesX(36,10000)) 
    print validate(17191.22, calcularImporteTotalMesX(48,10000)) 
    print validate(28935.24, calcularImporteTotalMesX(80,10000)) 
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  puts test_calcularPorcInteresUltimoMes
  puts test_calcularImpInteresUltimoMes
  puts test_calcularImporteTotalMesX

  puts " "
end
test
