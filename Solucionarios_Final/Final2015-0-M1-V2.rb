#encoding:UTF-8
=begin  
  Supermercado.

Una empresa de supermercados requiere un sistema que le permita calcular los totales de los productos vendidos en una caja de atención para luego replicarlo a las demás cajas del supermercado. El sistema tiene una lista de productos con sus respectivos códigos, nombres, precios unitarios y si tuviera algún descuento. 

Lo que hace la cajera es leer el código de barra de cada producto y el sistema determinará cuánto dinero le corresponde a esa venta considerando la cantidad, precio y el descuento. 

Para finalizar el sistema debe arrojar el total detallado de la venta con lo que el cliente debe pagar. Elaborar el un programa que tenga la siguiente funcionalidad:

a)  Se necesita la creación de un subprograma que determine el valor venta de cada producto dependiendo de su código y cantidad comprada
b)  Un subprograma que determine el valor venta total, para lo cual se deben haber ingresado todos los productos (en arrays). Se le debe adicionar el impuesto general a las ventas (IGV) del 18% del total.
c)  Un subprograma que indique cual fue el producto que tuvo el mayor importe de  venta

=end
def determinarventaproducto(codigolista,precios,descuentos,codigo,cantidad)
  indice = 0
  for i in 0...precios.size
    if codigolista[i] == codigo
      indice = i
    end
  end
  (cantidad * precios[indice] * (1 - descuentos[indice])).round(2)
end

def determinarventatotal(codigolista,precios,descuentos,todoscodigos,cantidades)
  total = 0.0
  for i in 0...todoscodigos.size
    total += determinarventaproducto(codigolista,precios,descuentos,todoscodigos[i],cantidades[i])
  end
  (total * 1.18).round(2)
end

def determinarmayorventa(codigolista,descripciones,precios,descuentos,todoscodigos,cantidades)
  mayor = 0.0
  for i in 0...todoscodigos.size
    if mayor < determinarventaproducto(codigolista,precios,descuentos,todoscodigos[i],cantidades[i])
      mayor = determinarventaproducto(codigolista,precios,descuentos,todoscodigos[i],cantidades[i])
      indice = i
    end
  end
  for i in 0...codigolista.size
    if codigolista[i] == todoscodigos[indice]
      return descripciones[i]
    end
  end
end
#--- zona de test ----

@codigolista =[14,67,89,45,17,44,26,89,33,23,93]
@descripciones =["aceite","azucar","arroz","fideos","leche","carne","pollo","conservas","verduras","sal","condimentos"]
@precios =[8.5,3.5,4.5,3.6,4.0,21.0,8.5,4.6,5.0,1.5,0.5]
@descuentos =[0.0,0.05,0.0,0.03,0.15,0.0,0.05,0.0,0.0,0.0,0.0]

def test_determinarventaproducto
    print validate(228.5, determinarventaproducto(@codigolista,@precios,@descuentos,33,45.7))
    print validate(14.96, determinarventaproducto(@codigolista,@precios,@descuentos,67,4.5))
    print validate(304.5, determinarventaproducto(@codigolista,@precios,@descuentos,44,14.5))
    print validate(22.1, determinarventaproducto(@codigolista,@precios,@descuentos,17,6.5))
end

def test_determinarventatotal
	codigos1=[33,67]
	cantidades1=[45.7,4.5]
  codigos2=[33,67,89,17,26]
	cantidades2=[5.7,2.5,6.8,4.7,5.1]
  codigos3=[45,26,89,23,67]
	cantidades3=[8.7,12.5,1.8,2.7,3.1]

  print validate(287.28, determinarventatotal(@codigolista,@precios,@descuentos,codigos1,cantidades1))
	print validate(147.79, determinarventatotal(@codigolista,@precios,@descuentos,codigos2,cantidades2))
	print validate(181.67, determinarventatotal(@codigolista,@precios,@descuentos,codigos3,cantidades3))

end

def test_determinarmayorventa
	codigos1=[33,67]
	cantidades1=[45.7,4.5]
  codigos2=[33,67,89,17,26]
	cantidades2=[5.7,2.5,6.8,4.7,5.1]
  codigos3=[45,26,89,23,67]
	cantidades3=[8.7,12.5,1.8,2.7,3.1]

  print validate("verduras", determinarmayorventa(@codigolista,@descripciones,@precios,@descuentos,codigos1,cantidades1))
	print validate("pollo", determinarmayorventa(@codigolista,@descripciones,@precios,@descuentos,codigos2,cantidades2))
	print validate("pollo", determinarmayorventa(@codigolista,@descripciones,@precios,@descuentos,codigos3,cantidades3))

end
def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_determinarventaproducto
  puts " "
  test_determinarventatotal
  puts " "
  test_determinarmayorventa
  puts " "
end
test
