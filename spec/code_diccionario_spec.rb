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

    it "debe de regresar la letra en la posicion que exista" do
        dicc = Diccionario.new
        dicc.aproximacion("sprinti", "i")
        resultado = dicc.historico.split("").join(" ")
        expect(resultado).to eq "_ _ _ i _ _ i"
    end

    it "debe de regresar las letras en la posicion que existan" do
        dicc = Diccionario.new
        #dicc.aprox = "_ _ _ i _ _"
        dicc.aproximacion("sprint", "i")
        dicc.aproximacion("sprint", "r")
        resultado = dicc.historico.split("").join(" ")
        expect(resultado).to eq "_ _ r i _ _"
    end

end