class Diccionario

    palabras = {1 => 'sprint', 2 => "review", 3 => "backlog", 4 => "planning", 5 => "meeting"}

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
end