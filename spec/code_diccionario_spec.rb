require './lib/diccionario.rb'
describe Diccionario do
    it "en diccionario debe regresar una palabra" do
        dicc = Diccionario.new
        resultado = dicc.dame_palabra
        expect(resultado).to eq "sprint"
    end
end