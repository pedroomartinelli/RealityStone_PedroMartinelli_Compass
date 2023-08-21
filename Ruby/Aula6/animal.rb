class Animal
    def pular
        puts 'Toing! Toim! Toing! Toim!'
    end

    def dormir
        puts 'ZzZzZzzz!'
    end
end

class Cachorro < Animal
    def latir
        puts 'Au Au!'
    end
end

class Gato < Animal
    def meow
        puts 'Meow!'
    end
end


cachorro = Cachorro.new()

cachorro.pular
cachorro.latir
cachorro.dormir