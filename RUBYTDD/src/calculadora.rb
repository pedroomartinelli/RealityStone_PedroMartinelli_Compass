class Calculadora

    def soma(a, b)
        a + b
    end

    def subtrai(a, b)
        a - b
    end

    def multiplica(a, b)
        a * b
    end

    def divide(a, b)
        if b == 0 
            return "Não é possível dividir um número por zero"
        end
        a / b.to_f 
        #Como a divisão retorna sempre o número inteiro é necessário o <to_f> para garantir as casas decimais da divisão
        #Erro descoberto via Testes
    end

    def raiz(a, b)
        if (a < 0) && (b % 2 == 0) #Se b é par
            return "Não é possível obter uma raiz de índice par de um número negativo!" 
        elsif (b == 0)
            return "A raiz de índice 0 é igual a Infinito!"
        end
        a**(1.0/b) 
    end

    def potenciacao(x, y)
        x**y
    end

end


