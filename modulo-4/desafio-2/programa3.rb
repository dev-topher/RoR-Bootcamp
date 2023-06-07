for i in 0..9 # Primera columna de la tabla de multiplicar
    puts "Tabla de multiplicar: #{i}"
    for j in 1..10 # Segundaa columna de la tabla de multiplicar
      resultado = i * j
      puts "#{i} * #{j} = #{resultado}" # Calcula e imprime
    end
end  

# Version ruby 3.2.2