def sumatoria(precios)
  acumulador = 0
  for i in 0...precios.size
    acumulador = acumulador + precios[i]
  end
  acumulador
end

def promedio(precios)
  sumatoria(precios) / precios.size
end

def productos_sobre_promedio(precios)
  contador = 0
  promedio_precios = promedio(precios)
  for i in 0...precios.size
    if precios[i] > promedio_precios
      contador = contador + 1
    end
  end
  contador
end

def producto_mas_costoso(precios, productos)
  mayor = precios[0]
  indice = 0
  for i in 0...precios.size
    if precios[i] > mayor
      mayor = precios[i]
      indice = i 
    end
  end
  productos[indice]
end

precios = [220.0, 110.0, 89.0, 283.9]
productos = ["Leche", "Carne", "Arroz", "Papa"]
precios2 = [1220.0, 4110.0, 569.0]
productos2 = ["Oro", "Platino", "Cobre"]
puts producto_mas_costoso(precios2,productos2)
