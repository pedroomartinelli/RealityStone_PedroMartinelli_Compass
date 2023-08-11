puts "Digite o número do mês que você nasceu:"

month = gets.chomp.to_i

case month
    when 1..3 #intervalo 1 a 3
        puts "Você nasceu no começo do ano."
    when 9..12
        puts "Você nasceu no final do ano."
    when 4..6
        puts "Você nasceu no primeira metade do ano."
    when 7..9
        puts "Você nasceu no segunda metade do ano."
    else
        puts "Não foi possível identificar."
    end