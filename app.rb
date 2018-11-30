require 'sinatra'
require './config'

get '/hextreme' do
    erb(:index)
end