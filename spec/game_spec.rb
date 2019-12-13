require "Game"

RSpec.describe Game do

    it 'Deberia devolver el nombre del jugador cuando le mandas el nombre: Allen' do
        game = Game.new
        nombre='Allen'
        expect(game.retornarNombre(nombre)).to eq (nombre)
    end

    it 'Deberia devolver el valor X , Y del mapa en un vector' do
        game = Game.new
        x=1
        y=1
        tamMapa = [1,1]
        expect(game.retornarTamanoMapa(x, y)).to eq (tamMapa)
    end

    it 'Deberia devolver true cuando el valor X , Y son correctos' do
        game = Game.new
        x=4
        y=1
        expect(game.validarDatos(x, y)).to eq (true)
    end

    it 'Deberia devolver false cuando el valor X , Y son negativos' do
        game = Game.new
        x=3
        y=-1
        expect(game.validarDatos(x, y)).to eq (false)
    end

    it 'Deberia devolver true cuando la posicion es valida dentro del mapa' do
        game = Game.new
        tamMap= [4,4];
        xCar = 1;
        yCar = 1;
        expect(game.validarPos(xCar, yCar, tamMap)).to eq (true)
    end

    it 'Deberia devolver la misma letra de intruccion cuando se envia D' do
        game = Game.new
        expect(game.validar1Instruccion('D')).to eq (true)
    end

    it 'Deberia devolver la misma letra de intruccion cuando es correcta (A-D-I)' do
        game = Game.new
        intruccion = 'D'
        expect(game.validar1Instruccion(intruccion)).to eq (true)
    end

    it 'Deberia devolver true cuando la cadena de instrucciones es correcta' do
        game = Game.new
        instrucciones = 'ADDDIDA'
        expect(game.validarInstruccion(instrucciones)).to eq (true)
    end

    it 'Deberia devolver true cuando la orientacion es correcta' do
        game = Game.new
        orientacion = 'N'
        expect(game.validarOrientacion(orientacion)).to eq (true)
    end

    it 'Deberia devolver true cuando la orientacion es correcta' do
        game = Game.new
        orientacion = 'F'
        expect(game.validarOrientacion(orientacion)).to eq (false)
    end

    it 'Deberia devolver true cuando la orientacion es correcta' do
        game = Game.new
        orientacion = 'S'
        expect(game.validarOrientacion(orientacion)).to eq (true)
    end

    it 'Deberia devolver true cuando la orientacion es correcta' do
        game = Game.new
        orientacion = 'E'
        expect(game.validarOrientacion(orientacion)).to eq (true)
    end

    it 'Deberia devolver true cuando la orientacion es correcta' do
        game = Game.new
        orientacion = 'O'
        expect(game.validarOrientacion(orientacion)).to eq (true)
    end

    it 'Deberia realizar un giro a la derecha al mandarle una posicion inicial' do
        game = Game.new
        posicion = [1,1,'N']
        posicionFinal = [1,1,'E']
        expect(game.girarDerecha(posicion)).to eq (posicionFinal)
    end

    it 'Deberia realizar un giro a la derecha al mandarle una posicion inicial' do
        game = Game.new
        posicion = [1,1,'S']
        posicionFinal = [1,1,'O']
        expect(game.girarDerecha(posicion)).to eq (posicionFinal)
    end

    it 'Deberia realizar un giro a la izquiera al mandarle una posicion inicial' do
        game = Game.new
        posicion = [1,1,'N']
        posicionFinal = [1,1,'O']
        expect(game.girarIzquierda(posicion)).to eq (posicionFinal)
    end

    it 'Deberia realizar un giro a la izquiera al mandarle una posicion inicial' do
        game = Game.new
        posicion = [1,1,'O']
        posicionFinal = [1,1,'S']
        expect(game.girarIzquierda(posicion)).to eq (posicionFinal)
    end

    it 'Deberia avanzar al mandarle una posicion inicial hacia el norte' do
        game = Game.new
        posicion = [1,1,'N']
        posicionFinal = [1,2,'N']
        expect(game.avanzar(posicion)).to eq (posicionFinal)
    end

    it 'Deberia avanzar al mandarle una posicion inicial hacia el este' do
        game = Game.new
        posicion = [1,1,'E']
        posicionFinal = [2,1,'E']
        expect(game.avanzar(posicion)).to eq (posicionFinal)
    end

    it 'Deberia avanzar al mandarle una posicion inicial hacia el OESTE' do
        game = Game.new
        posicion = [1,1,'O']
        posicionFinal = [0,1,'O']
        expect(game.avanzar(posicion)).to eq (posicionFinal)
    end

    it 'Deberia avanzar al mandarle una posicion inicial hacia el SUR' do
        game = Game.new
        posicion = [1,1,'S']
        posicionFinal = [1,0,'S']
        expect(game.avanzar(posicion)).to eq (posicionFinal)
    end

    it 'Deberia avanzar al mandarle una posicion inicial hacia el SUR' do
        game = Game.new
        posicion = [1,1,'S']
        posicionFinal = [1,0,'S']
        expect(game.avanzar(posicion)).to eq (posicionFinal)
    end

    it 'Deberia simular el recorrido al mandarle una posicion inicial, una cadena de instrucciones y el mapa' do
        game = Game.new
        posicionInicial = [1,1,'N']
        recorrido = 'ADAAIA'
        tamMapa = [5,5]

        posicionFinal = [3,3,'N']
        expect(game.simular(posicionInicial, recorrido, tamMapa)).to eq (posicionFinal)
    end

    it 'Deberia simular el recorrido hasta que se sale del mapa el auto y devolveria la posicon del choque' do
        game = Game.new
        posicionInicial = [2,2,'E']
        recorrido = 'ADAAIDD'
        tamMapa = [5,5]

        posicionFinal = [3,0,'S']
        expect(game.simular(posicionInicial, recorrido, tamMapa)).to eq (posicionFinal)
    end

end