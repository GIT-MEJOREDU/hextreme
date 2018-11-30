require 'sinatra'

get '/index' do 
    palabra="_ _ _ _ _ _"
    session["palabra"]=palabra
    erb(:index)
end
