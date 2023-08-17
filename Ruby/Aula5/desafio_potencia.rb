def power (a, b)
    a**b
end

leave = ''

while leave.upcase != 'N'
    print 'Digite um número para base:'
    base = gets.chomp.to_f
    print 'Digite um número para o expoente:'
    exp = gets.chomp.to_f

    puts "O resultado para uma potência de base #{base} e expoente #{exp} é #{power(base,exp)}. \n\n"

    print "Deseja continuar(S/N)?"
    leave = gets.chomp
end
