print "Digite o primeiro número: "
number1 = gets.chomp.to_i 
print "Digite o segundo número: "
number2 = gets.chomp.to_i 

addition = number1 + number2
subtraction = number1 - number2
division = number1 / number2
multiplication = number1 * number2

#Saída de resultado
puts "A adição dos números digitados é igual a #{addition}"
puts "A subtração dos números digitados é igual a #{subtraction}"
puts "A divisão dos números digitados é igual a #{division}"
puts "A multiplicação dos números digitados é igual a #{multiplication}"