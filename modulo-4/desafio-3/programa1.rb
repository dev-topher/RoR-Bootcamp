# Método de cálculo de incremento salarial

def calculo_incremento_salarial(salario, incremento)
  salario_actualizado = salario + (salario * (incremento / 100.0))
  return salario_actualizado
end

# Ingresa por teclado el salario actual y su incremento

puts "Ingrese el salario actual"
salario_actual = gets.chomp.to_i

puts "Ingrese el incremento mínimo establecido"
incremento_minimo = gets.chomp.to_i

# Llama el método y pasa como parámetro el salario actual y su incremento, 
# devolviéndo el salario actualizado y guardándolo en salario_actualizado

salario_actualizado = calculo_incremento_salarial(salario_actual, incremento_minimo)

puts "El nuevo salario es: #{salario_actualizado}"
  
# Versión de ruby 3.2.2