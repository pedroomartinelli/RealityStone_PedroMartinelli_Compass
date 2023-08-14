leave = ''
while leave.upcase != 'N'
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
        puts "O RESULTADO DA SUA OPERAÇÃO É #{number1 + number2} \n\n" 
    when 2
        puts "O RESULTADO DA SUA OPERAÇÃO É #{number1 - number2} \n\n" 
    when 3
        puts "O RESULTADO DA SUA OPERAÇÃO É #{number1 * number2} \n\n" 
    when 4
        puts "O RESULTADO DA SUA OPERAÇÃO É #{number1 / number2} \n\n"  
    else
        puts "Operação inválida! \n\n"
    end

    puts "Deseja continuar na calculadora?"
    puts "S - SIM :)"
    puts "N - NÃO :("

    leave = gets.chomp

    puts ""
    system("cls") #limpa o promp do windows (Comando encontrado com auxílio do chatCPT)
    
end