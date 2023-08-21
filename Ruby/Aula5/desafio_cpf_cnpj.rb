require "cpf_cnpj"

def valid(num)
    if CPF.valid?(num)
        return "CPF válido!"
    elsif CNPJ.valid?(num)
        return "CNPJ válido!"
    else
        return "CPF ou CNPJ inválido!"
    end
    
end


print "Entre com um número de CPF ou CNPJ:"
documento = gets.chomp
puts valid(documento)