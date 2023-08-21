
class Mercado
    def initialize(produto_nome, produto_preco)
        @produto = Produto.new
        @produto.nome = produto_nome
        @produto.preco = produto_preco
    end

    def compra 
        puts "Você comprou o produto #{@produto.nome} no valor de R$#{@produto.preco}"
    end
end

