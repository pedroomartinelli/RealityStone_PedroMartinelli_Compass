kv = {}

for i in 1..3 do
    print "Digite a chave #{i}: "
    key = gets.chomp
    print "Digite o valor da chave #{i}: "
    value = gets.chomp
    kv[key] = value
end

kv.each do |key, value|
    puts "A chave #{key} tem o valor de #{value}"
end
