numbers = {'a': 10, 'b': 30, 'c': 20, 'd': 25, 'e': 15}
biggets_value= numbers.values.max

puts 'Selecionando a chave do maior valor:'
biggest_value_key = numbers.select do |key, value|
    value == biggets_value    
end

puts "A chave e maior valor do hash São: #{biggest_value_key}"

