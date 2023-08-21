class Instrumento
    def escrever
        puts 'Escrevendo'
    end
end

class  Teclado < Instrumento
    def escrever
        puts 'Tecladoo'
        super
end

class Lapis < Instrumento
    def escrever
        puts 'Escrevendo à Lápis'
    end
end

class Caneta < Instrumento
    def escrever
        puts 'Escrevendo à Caneta'
    end
end

teclado = Teclado.new()
lapis = Lapis.new() 
caneta = Caneta.new()

lapis.escrever
caneta.escrever
teclado.escrever