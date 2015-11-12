=begin 
Pregunta 1 

El banco “Presta mucho” ha definido su forma de calcular el seguro de desgravamen para los tipos de préstamos que otorga, todos en soles. El seguro de desgravamen se utiliza como cobertura ante el fallecimiento o incapacidad del cliente al que se le otorgó el préstamo. Dicho cálculo es un porcentaje que se multiplica por el monto del préstamo y depende de si el cliente es hombre o mujer y del tipo de préstamo que ha solicitado según la siguiente tabla:


Cliente Tipo de préstamo Desgravamen (Porcentaje)
Hombre    Consumo             5%
          Vehicular           4%
          Hipotecario         3%

Mujer     Consumo             4%
          Vehicular           3%
          Hipotecario         2%


Adicionalmente, si el cliente es hombre y tiene 50 años o más se le cobrará un monto adicional de 100 soles, independiente del monto del préstamo. Si el cliente es hombre y tiene 40 años o más y menos de 50 se le cobrará un monto adicional de 50 soles independiente del monto del préstamo. Si el cliente es mujer y tiene 55 años o más se le cobrará un monto adicional de 80 soles. Si el cliente es mujer y tiene 45 años o más y menos de 55 se le cobrará un monto adicional de 70 soles.
 
Se pide desarrollar un programa que realice lo siguiente:

1)  Calcular el porcentaje del seguro según el tipo de cliente y el tipo de préstamo.
2)  Calcular el importe del seguro adicional según la edad y el tipo de cliente.
3)  Calcular el total del importe del seguro.

=end

#encoding:UTF-8
def seguroDesgravamen(tipoCliente,tipoPrestamo)
  if tipoCliente == "Hombre"
    case tipoPrestamo
    when "Consumo"
      0.05
    when "Vehicular"
      0.04
    else
      0.03
    end      
  else
    case tipoPrestamo
    when "Consumo"
      0.04
    when "Vehicular"
      0.03
    else
      0.02
    end
  end
end

def seguroAdicional(tipoCliente,edad)
  if tipoCliente == "Hombre"
    case edad
    when 40..49
      50.00
    when 50..100
      100.00
    else
      0.0
    end
  else
    case edad
    when 45..54
      70.00
    when 55..100
      80.00
    else
      0.0
    end
  end
end

def totalSeguro(tipoCliente,tipoPrestamo,edad,montoPrestamo)
  porcentaje = seguroDesgravamen(tipoCliente,tipoPrestamo)
  adicional = seguroAdicional(tipoCliente,edad)
  montoPrestamo * porcentaje + adicional

end

#--- zona de test ----

def validate(expected, value)    
  expected == value ? "." : "F"
end

def test_seguroDesgravamen
    print validate(0.05,seguroDesgravamen("Hombre","Consumo"))
    print validate(0.04,seguroDesgravamen("Hombre","Vehicular"))
    print validate(0.03,seguroDesgravamen("Hombre","Hipotecario"))    
    print validate(0.04,seguroDesgravamen("Mujer","Consumo"))
    print validate(0.03,seguroDesgravamen("Mujer","Vehicular"))    
    print validate(0.02,seguroDesgravamen("Mujer","Hipotecario"))
end

def test_seguroAdicional
    print validate(100.00,seguroAdicional("Hombre",54))
    print validate(50.00,seguroAdicional("Hombre",44))
    print validate(0.00,seguroAdicional("Hombre",38))    
    print validate(80.00,seguroAdicional("Mujer",58))
    print validate(70.00,seguroAdicional("Mujer",47))    
    print validate(0.00,seguroAdicional("Mujer",29))
end   

def test_totalSeguro
    print validate(200.00,totalSeguro("Hombre","Consumo",60,2000.00))
    print validate(210.00,totalSeguro("Hombre","Vehicular",45,4000.00))
    print validate(160.00,totalSeguro("Mujer","Consumo", 57,2000.00))
    print validate(150.00,totalSeguro("Mujer","Hipotecario",45,4000.00))
end
20
def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_seguroDesgravamen
  test_seguroAdicional
  test_totalSeguro
  puts " "
end
test
