# Genera un número aleatorio entre 1 y 100
num_aleatorio = rand(1..100)

# Genera las variables base para el ciclo
adivinado = false
intentos = 0

# Mientras la variable adivinado sea falso, el ciclo se repite
while !adivinado

  puts "Adivina el número (entre 1 y 100):"
  num_usuario = gets.chomp.to_i # Guarda el número del usuario
  
  intentos += 1 # Incrementa el contador de intentos
  
  # Compara el número del usuario con el número aleatorio
  if num_usuario == num_aleatorio
    puts "¡Felicidades! Adivinaste el número en #{intentos} intentos."
    adivinado = true
  elsif num_usuario < num_aleatorio
    puts "El número seleccionado es demasiado bajo. Intenta de nuevo." # Incorrecto inferior
  else
    puts "El número seleccionado es demasiado alto. Intenta de nuevo." # Incorrecto superior
  end
end

# Versión de ruby 3.2.2