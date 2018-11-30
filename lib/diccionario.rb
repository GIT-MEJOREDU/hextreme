class Diccionario

    attr_accessor :historico

    palabras = {1 => 'sprint', 2 => "review", 3 => "backlog", 4 => "planning", 5 => "meeting"}

    def initialize palabra = "sprint"
        total_letras = palabra.size
        @historico = ("_" * total_letras)
    end

    def dame_palabra
        "sprint"
    end

    def posiciones p_palabra, p_letra
       posiciones = []
       aux = 0
       p_palabra.split("").each do |letra|
        if letra == p_letra
            posiciones.push(aux)
        end
        aux += 1
       end
       return posiciones
    end

    def aproximacion p_palabra, p_letra
        posiciones = posiciones(p_palabra, p_letra)
        posiciones.each do |posicion|
            @historico[posicion] = p_letra
        end
    end


end