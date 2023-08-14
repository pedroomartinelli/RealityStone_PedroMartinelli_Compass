
loop do
    print "Digite o primeiro número: "
    number1 = gets.chomp.to_f
    print "Digite o segundo número: "
    number2 = gets.chomp.to_f

    puts "# SELECIONE A OPERAÇÃO #"
    puts "1 - ADIÇÃO (+)"
    puts "2 - SUBTRAÇÃO (-)"
    puts "3 - MULTIPLICAÇÃO (*)"
    puts "4 - DIVISÃO (/)"
    

    print "Operação: "
    option = gets.chomp.to_i

    case option
    when 1
        result = number1 + number2
    when 2
        result = number1 - number2
    when 3
        result = number1 * number2
    when 4
        result = number1 / number2
    else
        puts "Opção inválida!"
    end

    puts result
    
    puts "Deseja continuar na calculadora?"
    puts "1 - SIM :)"
    puts "0 - NÃO :("

    leave = gets.chomp.to_i

    if leave == 0
        break
    end
end


    
