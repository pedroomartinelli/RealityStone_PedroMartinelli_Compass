class Dog
    #FORMA CONVENCIONAL
    attr_accessor :name, :age


    #FORMA NAO CONVENCIONAL
    # def name 
    #     @name
    # end

    # def name= name #parametro
    #     @name = name 
    # end
end

dog = Dog.new
dog.name = 'Marlon'
puts dog.name

dog.age = '1 ano'
puts dog.age