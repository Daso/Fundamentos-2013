def interes(monto, interes, periodo)
  
  for i in 1..periodo    
    puts monto
    monto = monto * (1 + interes / 100.0)
  end
  
  
end

interes(100, 10, 3)
