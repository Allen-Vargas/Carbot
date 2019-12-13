class Map
    attr_accessor :posX
    attr_accessor :posY

    def initializate ( x , y )
        @posX = x
        @posY = y
    end

    def getXMap
        return @posX
    end

    def getYMap
        return @posY
    end

    def validarDatosMapa()
        if(@posX>0 && @posY>0)
            return true
        else
            return false
        end
    end

    def retornarTamanoMapaEnVec()
        vecMapa=[0]
        vecMapa[0]=@posX
        vecMapa[1]=@posY
        return vecMapa
    end
    
end