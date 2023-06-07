class Person
    # Inicializa / Crea el constructor de la clase Persona con los parámetros enviados
    def initialize(first, last, age, type)
        @first_name = first
        @last_name = last
        @age = age
        @type = type
    end
    # Crea el método Birthday
    def birthday
        @age += 1
        puts "Felices #{@age} años!"
    end
    # Crea el método introduce (lo pensé generalizado para que éste se herede a cada caso)
    def introduce
        puts "Hola. Mi nombre es #{@first_name} #{@last_name} y soy #{@type}"
    end
end
    
class Student < Person
    # Crea el método talk imprimiendo el texto específico de cada hijo
    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end
end
    
class Teacher < Person
    # Crea el método talk imprimiendo el texto específico de cada hijo
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end
end
    
class Parent < Person
    # Crea el método talk imprimiendo el texto específico de cada hijo
    def talk
        puts "Aquí es la reunión de apoderados?"
    end
end

# Casos de prueba

# Estudiante
student = Student.new("Christopher", "Paredes", 25, "Estudiante") 
student.talk
student.introduce
student.birthday

# Profesor
teacher = Teacher.new("Pedro", "Robles", 25, "Profesor")
teacher.talk
teacher.introduce
teacher.birthday

# Pariente/apoderado
parent = Parent.new("Ignacio", "Torres", 50, "Apoderado")
parent.talk
parent.introduce
parent.birthday
  