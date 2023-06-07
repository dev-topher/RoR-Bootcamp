char = "*" # Caracter para imprimir el triángulo
puts "Ingrese la cantidad de filas del triángulo:"
cant_filas = gets.chomp.to_i # Guarda la cantidad de filas ingresadas

for i in 1..cant_filas do
  print " " * (cant_filas - i) # Imprime los espacios en blanco para alinear el triángulo
  print char * (2 * i - 1) # Imprime los caracteres correspondientes
  puts "" # Imprime el salto de linea
end

# Version ruby 3.2.2