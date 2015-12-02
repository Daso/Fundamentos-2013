=begin  
1.	CULCA

La empresa CULCA SAC es una pasarela de pagos para dispositivos móviles. Entre sus funciones, para que opere el sistema, el cliente utiliza el código QR de los teléfonos inteligentes. Se genera un código QR que identifica la operación que se está realizando el mismo que contiene la información que se encuentra separada por el carácter especial michi (#), consta de cinco campos y es una cadena de caracteres como se muestra a continuación:
 
"E001#1932003004002220#OP201#M01#12356", 
			"E001#1932112015332220#OP201#M01#10000", 
			"E002#175180111224#OP202#M02#150050",    
			"E003#210016010230#OP202#M01#50000",     
			"E003#210026010230#OP202#M02#85020"

Dónde:
Campo1 es el código de la entidad financiera (E001=Banco de Crédito, E002=Scotiabank, E003=Interbank)

Campo2 es el número de la cuenta de la entidad financiera  

Campo3 es el tipo de operación (OP201=Retiro, OP202=Depósito)

Campo4 es la moneda de la operación (M01=nuevos soles, M02=Dólares)

Campo5 es el importe de la operación (las dos últimas posiciones son los decimales por ejemplo si indica la cadena indica 10000, entonces el importe es 100.00)

Se solicita lo siguiente:

a)	Elaborar un subprograma que reciba como parámetro un array  con los códigos QR y determine a cuanto ascendió el total de operaciones en nuevos soles y en dólares. Por ejemplo: Si la suma de nuevos soles fue 723.56 y la de dólares 2350.70, se debe retornar lo siguiente [723.56, 2350.70]
b)	Elaborar un subprograma que reciba como parámetro un array  con los códigos QR y determine el monto total de comisión a cobrar, sabiendo que se cobra el 0.1% del monto por cada operación. La comisión debe ser un solo importe en nuevos soles para lo cual se debe tomar en cuenta que el tipo de cambio es de 3.30.
Por ejemplo, para el caso anterior la comisión será S/.8.48
 (10 puntos)


=end

# encoding:utf-8

def totalImportepormoneda(codigosQR)
  cadena = ""
  monto = ""
  moneda = ""
  totalsoles = 0.0
  totaldolares = 0.0
  for i in 0..codigosQR.size-1
  cont = 0
  cadena = codigosQR[i]
  long = cadena.size-1
  posAnterior = cadena.size-1
  while (long > 0)
    car = cadena[long]
    if (car == "#")
      cont = cont + 1
      case cont
      when 1
        monto = cadena[long+1..posAnterior]
        posAnterior = long-1
      when 2
        moneda = cadena[long+1..posAnterior]
        posAnterior = long-1
      end
    end
    long = long - 1
 end

  case moneda
  when "M01"
    totalsoles = totalsoles + (monto.to_f / 100.0)
  else
    totaldolares = totaldolares + (monto.to_f / 100.0)
  end
end

resultado = Array.new
resultado.push(totalsoles)
resultado.push(totaldolares)

    
end

def totalComision(codigosQR)
 totales = totalImportepormoneda(codigosQR)
 ((totales[1].to_f * 3.30 + totales[0]) / 1000.0).round(2)
end



#--- zona de test ----
@codigosQR1=["E001#1932003004002220#OP201#M01#12356", 
			"E001#1932112015332220#OP201#M01#10000", 
			"E002#175180111224#OP202#M02#150050",    
			"E003#210016010230#OP202#M01#50000",     
			"E003#210026010230#OP202#M02#85020"]     
@codigosQR2=["E003#21005412422#OP202#M02#1025", 
			"E001#193100005225578#OP202#M02#2000", 
			"E002#172222211224#OP201#M01#170000",    
			"E001#19345240405010230#OP201#M02#40000",     
			"E003#211010010230#OP201#M01#75050"]
@codigosQR3=["E001#1932003004002220#OP201#M01#152000", 
			"E001#1932112015332220#OP201#M01#250000", 
			"E002#175180111224#OP202#M02#97500",    
			"E003#210016010230#OP202#M01#480070",     
			"E003#210026010230#OP202#M02#178065"]			
@codigosQR4=["E002#1932003004002220#OP201#M02#578000", 
			"E002#1932112015332220#OP201#M02#770000", 
			"E001#175180111224#OP202#M02#2150050",    
			"E001#210016010230#OP202#M01#25000",     
			"E003#210026010230#OP202#M02#985020"]

def test_totalImportepormoneda
    print validate([723.56,2350.70], totalImportepormoneda(@codigosQR1)) 
    print validate([2450.50,430.25], totalImportepormoneda(@codigosQR2)) 
    print validate([8820.7,2755.65], totalImportepormoneda(@codigosQR3)) 
    print validate([250.0,44830.7], totalImportepormoneda(@codigosQR4)) 
end

def test_totalComision
    print validate(8.48, totalComision(@codigosQR1)) 
    print validate(3.87, totalComision(@codigosQR2)) 
    print validate(17.91, totalComision(@codigosQR3)) 
    print validate(148.19, totalComision(@codigosQR4)) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_totalImportepormoneda
  puts " "
  test_totalComision
  puts " "
end
test
