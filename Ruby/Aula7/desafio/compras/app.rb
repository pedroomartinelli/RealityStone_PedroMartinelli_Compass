require_relative 'produto'
require_relative 'mercado'

primeiro_produto = Produto.new()
primeiro_produto.nome = 'Salgadinho'
primeiro_produto.preco = 10

segundo_produto = Mercado.new('Carne', 50)


puts "Primeiro produto: #{primeiro_produto.nome}" + ", R$#{primeiro_produto.preco.to_s}"
puts segundo_produto.compra