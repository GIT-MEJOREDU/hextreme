require 'sinatra'
require './lib/diccionario.rb'
enable :sessions

get '/index' do 
    palabra="_ _ _ _ _ _"
    session["palabra"]=palabra
    erb(:index)
end

get '/' do
    redirect '/index'
end

post '/adivinar' do
    dicc = Diccionario.new params["letra_intento"]
    session["palabra"] = "_ _ r _ _"
    session["mensaje"] = "Acertaste la letra"
    erb(:index)
end