=begin
Pregunta 1 
 En un juego de video se tienen los siguientes tipos de luchadores: “Orbita”, “Puño”, “Laboratorio”. Estos tres tipos de luchadores tienen un poder de pelea que a su vez se compone de una serie de características: “Ataque”, “Defensa”, “Habilidad”. 

	


          Componentes Poder Pelea
Tipo Luchador	Ataque	Defensa	Habilidad
Orbita	        30%	    20%	     50%
Puño	          60%	    15%	     25%
Laboratorio	    45%	    35%	     20%

Además se sabe que algunos tipos de luchadores tienen más probabilidad de vencer a otro tipo de luchadores de acuerdo a la siguiente tabla:


Contendiente	Orbita	Puño	Laboratorio
Retador
Orbita	      50%   	30%	    60%
Puño	        70%	    50%	    45%
Laboratorio	  40%	    55%	    50%


 

Se pide:

1.	Dada una combinación de tipo de luchador y un componente de poder de pelea, determinar cuál es el porcentaje correspondiente al dicho componente.
2.	Dado 2 tipos de luchadores(contendiente, retador), determinar cuál es el que tiene mayor probabilidad de vencer(devolver como respuesta las siguientes opciones: “Contendiente”, “Retador”, “Ambos”).
3.	Si se tiene el poder de pelea de un luchador, determinar cuántos puntos de dicho poder corresponden a una característica dada.


=end
def calcularPorcentaje(tipoLuchador, componente)
  case tipoLuchador
  when "Orbita"
    case componente
      when "Ataque"
        30
      when "Defensa"
        20
      when "Habilidad"
        50
    end
  when "Puño"
    case componente
      when "Ataque"
        60
      when "Defensa"
        15
      when "Habilidad"
        25
    end
  when "Laboratorio"
    case componente
      when "Ataque"
        45
      when "Defensa"
        35
      when "Habilidad"
        20
    end
  end
	 
end

def determinarProbabilidadVencer(contendiente, retador)
 case contendiente
  when "Orbita"
    case retador
      when "Orbita"
        "Ambos"
      when "Puño"
        "Retador"
      when "Laboratorio"
        "Contendiente"
    end
  when "Puño"
    case retador
      when "Orbita"
        "Contendiente"
      when "Puño"
        "Ambos"
      when "Laboratorio"
        "Retador"
    end
  when "Laboratorio"
    case retador
      when "Orbita"
        "Retador"
      when "Puño"
        "Contendiente"
      when "Laboratorio"
        "Ambos"
    end
  end
	 
end

def calcularPuntosCaracteristica(puntajePelea, tipoLuchador, caracteristica)
  porcentaje = calcularPorcentaje(tipoLuchador, caracteristica)
  puntajePelea * (porcentaje / 100.0 )
end

#--- zona de test ----

def test_calcularPorcentaje
    print validate(30, calcularPorcentaje("Orbita","Ataque")) 
	print validate(15, calcularPorcentaje("Puño", "Defensa")) 
	print validate(20, calcularPorcentaje("Laboratorio", "Habilidad")) 
end

def test_determinarProbabilidadVencer
    print validate("Ambos", determinarProbabilidadVencer("Orbita", "Orbita")) 
	print validate("Retador", determinarProbabilidadVencer("Orbita", "Puño")) 
	print validate("Contendiente", determinarProbabilidadVencer("Laboratorio", "Puño")) 
	print validate("Retador", determinarProbabilidadVencer("Puño", "Laboratorio")) 
end

def test_calcularPuntosCaracteristica
    print validate(3, calcularPuntosCaracteristica(10,"Orbita","Ataque")) 
	print validate(15, calcularPuntosCaracteristica(100,"Puño", "Defensa")) 
	print validate(200, calcularPuntosCaracteristica(1000,"Laboratorio", "Habilidad")) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularPorcentaje
  test_determinarProbabilidadVencer
  test_calcularPuntosCaracteristica
  puts " "
  
end
test
