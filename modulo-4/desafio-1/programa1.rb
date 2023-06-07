opciones = ['piedra', 'papel', 'tijera'] # Defino un arreglo/Dic de datos de opciones válidas
# Piedra = 0
# Papel = 1
# Tijeras = 2

puts "---------- Menú ----------"
puts "¿Piedra, papel o tijera?"
puts "Ingresa la opción por teclado que prefiera"
opcion_jugador = gets.chomp.downcase

# Verificar si la opción del usuario se encuentra en el arreglo de opciones

if opciones.include?(opcion_jugador) 

  opcion_pc = rand(0..2) # Obtiene la opción del computador de manera aleatoria

  puts "Jugador: #{opcion_jugador}"
  puts "PC: #{opciones[opcion_pc]}"

  # Compara las opciones del jugador con las del computador

  if opcion_jugador == opciones[opcion_pc] 
    puts "***** Empate *****"
  elsif (opcion_jugador == opciones[0] && opcion_pc == opciones[2]) || (opcion_jugador == opciones[1] && opcion_pc == opciones[0]) || (opcion_jugador == opciones[3] && opcion_pc == opciones[1])
    puts "***** Felicidades, ¡Ganaste! *****"
  else
    puts "***** Perdiste :( *****"
  end

else
  # Si ingresa un valor que no se encuentra en el arreglo opciones, devuelve mensaje
  puts "Argumento invalido: Debe ser piedra, papel o tijera."
end
