require "./lib/robot.rb"
require "./lib/map.rb"
require "./lib/jugador.rb"
require 'sinatra'

@@auto ||= Robot.new
@@mapa ||= Map.new

get '/' do
    erb :principal
end

post '/datos' do
    @nombre = params[:nombreTxt]
    erb :mapa
end

get '/datos' do 
    erb :mapa
end

post '/resultado' do
    @mapaX = params[:mapaX]
    @mapaY = params[:mapaY]
    @carX = params[:carX]
    @carY = params[:carY]
    @carO = params[:carO]

    @@auto.initializate(params[:carX].to_i, params[:carY].to_i, params[:carO])
    @@mapa.initializate(params[:mapaX].to_i, params[:mapaY].to_i);

    mapaV = @@mapa.retornarTamanoMapaEnVec();
    @recorrido = params[:recorrido]
    @@auto.simular(params[:recorrido],mapaV)
    erb :resultado
end

get '/resultado' do
    erb :resultado
end