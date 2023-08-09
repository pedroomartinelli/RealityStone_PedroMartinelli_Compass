print "Digite o primeiro número inteiro: "
number1 = gets.chomp.to_i #.to_i transforma para inteiro pois os dados vem como tipo String
print "Digite o segundo número inteiro: "
number2 = gets.chomp.to_i 
#Operação matemática
addition = number1 + number2
#Saída de resultado
puts "A adição dos números digitados é igual a #{addition}"