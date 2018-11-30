require './lib/diccionario.rb'
describe Diccionario do
    it "en diccionario debe regresar una palabra" do
        dicc = Diccionario.new
        resultado = dicc.dame_palabra
        expect(resultado).to eq "sprint"
    end
    it "debe regresar posiciones en palabra dada una letra" do
        dicc = Diccionario.new
        resultado = dicc.posiciones("sprint", "i")
        expect(resultado).to eq [3]
    end
    it "debe regresar posiciones en palabra dada una letra" do
        dicc = Diccionario.new
        resultado = dicc.posiciones("sprinti", "i")
        expect(resultado).to eq [3, 6]
    end
end