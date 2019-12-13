class Game

    def retornarNombre(nombre)
        return nombre
    end

    def retornarTamanoMapa(x, y)
        vecMapa=[0]
        vecMapa[0]=x
        vecMapa[1]=y
        return vecMapa
    end

    def validarDatos(x, y)
        if(x>0 && y>0)
            return true
        else
            return false
        end
    end

    def validarPos(xCar, yCar, tamMap)
        if(validarDatos(xCar,yCar) && xCar<=tamMap[0] && yCar<=tamMap[1])
            return true
        else
            return false
        end
    end

    def validar1Instruccion(instruccion)
        respuesta = false
        if(instruccion=='A')
            respuesta = true
        end
        if(instruccion=='D')
            respuesta = true
        end
        if(instruccion=='I')
            respuesta = true
        end

        return respuesta
    end

    def validarInstruccion(instruccion)
        respuesta = true
        tam = instruccion.length

        for i in 0..(tam-1) do
            if(validar1Instruccion(instruccion[i])==false)
                respuesta=false
                i=tam
            end
        end
        return respuesta
    end

    def validarOrientacion(orientacion)
        respuesta = false
        if(orientacion=='N')
            respuesta = true
        end
        if(orientacion=='S')
            respuesta = true
        end
        if(orientacion=='E')
            respuesta = true
        end
        if(orientacion=='O')
            respuesta = true
        end
        return respuesta
    end

    def girarDerecha(posicion)
        final = [0]
        final[0] = posicion[0]
        final[1] = posicion[1]
        final[2] = posicion[2]

        if(posicion[2] == 'N')
            final[2] = 'E' 
        end
        if(posicion[2] == 'E')
            final[2] = 'S' 
        end
        if(posicion[2] == 'S')
            final[2] = 'O' 
        end
        if(posicion[2] == 'O')
            final[2] = 'N' 
        end

        return final
    end

    def girarIzquierda(posicion)
        final = [0]
        final[0] = posicion[0]
        final[1] = posicion[1]
        final[2] = posicion[2]

        if(posicion[2] == 'N')
            final[2] = 'O' 
        end
        if(posicion[2] == 'O')
            final[2] = 'S' 
        end
        if(posicion[2] == 'S')
            final[2] = 'E' 
        end
        if(posicion[2] == 'E')
            final[2] = 'N' 
        end

        return final
    end

    def avanzar(posicion)
        final = [0]
        final = posicion

        if(posicion[2] == 'N')
            final[1] =  final[1]+1
        end
        if(posicion[2] == 'E')
            final[0] =  final[0]+1
        end
        if(posicion[2] == 'S')
            final[1] =  final[1]-1
        end
        if(posicion[2] == 'O')
            final[0] =  final[0]-1
        end
        return final
    end

    def simular(posicionInicial, recorrido, tamMapa)

        final = [0]
        numeroInstrucciones = recorrido.length
        chocado=false
        pos=0

        final=posicionInicial
        while (pos < numeroInstrucciones && chocado  == false)
            if(validarPos(final[0],final[1], tamMapa))
                if(recorrido[pos]=='A')
                    final = avanzar(final)
                end
                if(recorrido[pos]=='D')
                    final = girarDerecha(final)
                end
                if(recorrido[pos]=='I')
                    final = girarIzquierda(final)
                end
            else
                chocado = true
            end
            pos=pos+1
        end
        return final

    end
end