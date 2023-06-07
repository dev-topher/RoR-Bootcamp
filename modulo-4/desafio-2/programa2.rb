i = 0 # i corresponde al inicio de la cadena que necesitamos consultar (0 a 20)
while i <= 20 do # Mientras i sea igual o menor a 20 haz 
  if i.odd? #¿Es impar?
    puts i # Si lo es, lo imprime
  end
  i = i + 1 # Suma 1
end

# Version ruby 3.2.2