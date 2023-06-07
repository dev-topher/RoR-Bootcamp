require 'uri'
require 'net/http'
require 'json'

# Carga las librerías URL, net/http y json

=begin
    Método 1, Guarda la respuesta de la petición
    HTTP en un objeto json, después lo transforma a
    un objeto hash
=end

def request (url_solicitada)
    url = URI(url_solicitada) # Convierte la url en objeto URI
    response = Net::HTTP.get(url) # Realiza una solicitud GET y guarda la respuesta
    json_base =  JSON.parse(response) # Guarda la respuesta a hash
    hash = json_base["photos"] # Convierte la respuesta a hash usando "photos" de cabecera
    return hash # Devuelve el hash
end

=begin
    Método 2, Crea el archivo HTML mediante el Hash obtenido
    a través del método anterior
=end

def build_web_page (respuesta)
    photos = respuesta.to_a # Transforma el Hash a Array
    
    # Crea y suma la información a guardar y crear en el HTML

    html = "<html>\n"
    html += "  <head>\n"
    html += "  </head>\n"
    html += "  <body>\n"
    html += "    <ul>\n"

    # Crea por cada dato una imagen con el src del hash que recibimos de la api de la NASA

    photos.each do |photo|
        html += "      <li><img src=\"#{photo["img_src"].to_s}\"></li>\n"
    end

    # Ciera las etiquetas creadas previamente

    html += "    </ul>\n"
    html += "  </body>\n"
    html += "</html>"

    # Crea el archivo HTML
    # Como ejemplo hay un archivo HTML de vista previa en el repo

    File.write('nasa.html', html)
    puts "<HTML Creado>"
end

=begin
    Método 3, Crea un hash del hash previamente obtenido
    cuenta la cantidad de fotos que posee el hash inicial 
    y la guarda en el nuevo hash
=end

def photos_count (respuesta)
    fotos = respuesta.to_a # Transforma el Hash a Array
    contador = Hash.new(0) # Crea el nuevo hash contador

    fotos.each do |foto| # Por cada dato en fotos guarda el nombre y suma 1 al contador
      camara = foto["camera"]["name"]
      contador[camara] += 1
    end

    # Imprime el hash contador

    print "El hash de conteo es: "
    print contador
end

# Usa las funciones recibiendo de parámetro la url necesaria

url_revisada = request('https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=2&api_key=aTpvuBM2niK0yVtHNSVB8ZjterNFQjldkkoBRmHW')
build_web_page(url_revisada)
photos_count(url_revisada)

# Versión de ruby 3.2.2
