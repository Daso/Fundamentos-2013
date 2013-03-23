def esprimo(numero)
  contador = 0
  for i in 1 .. numero
    if((numero % i) == 0)
      contador = contador + 1
    end
  end
  if (contador > 2)
    false
  else
    true
  end
  
end

def mostrarPrimos(numero)
  
  for i in 2..numero
    if esprimo(i)
      puts i
    end
  end
  
end

mostrarPrimos(8)