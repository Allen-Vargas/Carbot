class Robot
    attr_accessor :posX
    attr_accessor :posY
    attr_accessor :orientacion

    attr_accessor :posXF
    attr_accessor :posYF
    attr_accessor :orientacionF

    def initializate ( x , y, o)
        @posX = x
        @posY = y
        @orientacion = o

        @posXF = x
        @posYF = y
        @orientacionF = o
    end

    def getXorigen
        return @posX;
    end

    def getYorigen
        return @posY;
    end
    
    def getOorigen
        return @orientacion;
    end

    def getXF
        return @posXF
    end
    def getYF
        return @posYF
    end
    def getOF
        return @orientacionF
    end

    def validarDatos
        if(@posXF>0 && @posYF>0)
            return true
        else
            return false
        end
    end

    def validarPos tamMap
        if(validarDatos() && @posXF<=tamMap[0] && @posYF<=tamMap[1])
            return true
        else
            return false
        end
    end

    def girarDerecha
        res = @orientacionF
        if(@orientacionF == 'N')
            res = 'E' 
        end
        if(@orientacionF == 'E')
            res = 'S' 
        end
        if(@orientacionF == 'S')
            res = 'O' 
        end
        if(@orientacionF == 'O')
            res = 'N' 
        end
        
        @orientacionF = res
    end

    def girarIzquierda
        res = @orientacionF
        if(@orientacionF == 'N')
            res = 'O' 
        end
        if(@orientacionF == 'O')
            res = 'S' 
        end
        if(@orientacionF == 'S')
            res = 'E' 
        end
        if(@orientacionF == 'E')
            res = 'N' 
        end

        @orientacionF = res
    end

    def avanzar
        if(@orientacionF == 'N')
            @posYF =  @posYF +1
        end
        if(@orientacionF == 'E')
            @posXF =  @posXF+1
        end
        if(@orientacionF == 'S')
            @posYF =  @posYF-1
        end
        if(@orientacionF == 'O')
            @posXF =  @posXF-1
        end
    end

    def simular(recorrido, tamMapa)

        numeroInstrucciones = recorrido.length
        chocado=false
        pos=0

        while (pos < numeroInstrucciones && chocado  == false)
            if(validarPos(tamMapa))
                if(recorrido[pos]=='A')
                    avanzar()
                end
                if(recorrido[pos]=='D')
                    girarDerecha()
                end
                if(recorrido[pos]=='I')
                    girarIzquierda()
                end
            else
                chocado = true
            end
            pos=pos+1
        end
    end
end