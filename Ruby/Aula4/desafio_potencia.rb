numbers = []

for i in 1..3 do
    print "Digite o valor #{i}: "
    number = gets.chomp.to_i
    numbers.push(number)
end

numbers.map! do |num|
    num**2
end


puts "Os valores elevados a segunda potência são:" + numbers.join(" ")