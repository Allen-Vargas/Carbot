class Jugador
    attr_accessor :nombre

    def initializate ( nombre )
        @nombre = nombre
    end

    def getName
        return @nombre
    end
end