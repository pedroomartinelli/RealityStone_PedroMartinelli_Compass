require 'rspec'
require_relative '../src/calculadora'

describe('Calculadora') do
    calculadora = Calculadora.new

    ###################### SOMA ######################
    it('Deve somar dois números inteiros positivos') do
        expect(calculadora.soma(4, 5)).to eq 9
        expect(calculadora.soma(3, 7)).to eq 10
        expect(calculadora.soma(-2, -40)).to eq -42
    end

    it('Deve somar dois números decimais ') do
        expect(calculadora.soma(4.3, 5.9)).to eq 10.2
        expect(calculadora.soma(1.5, 2.5)).to eq 4.0
        expect(calculadora.soma(0.1, 0.2)).to be_within(0.01).of(0.3) 
        #Devido a precisao dos números reais o resultado da operação foi 0.3000(...)004. Para isso foi usado o be_within e estipulado uma margem de erro de 0.01
    end

    it('Deve somar qualquer número com 0') do
        expect(calculadora.soma(9, 0)).to eq 9
        expect(calculadora.soma(0, 0)).to eq 0
        expect(calculadora.soma(0, 4)).to eq 4
        expect(calculadora.soma(-3, 0)).to eq -3
    end

    it('Deve somar números inteiros negativos') do
        expect(calculadora.soma(-9, -10)).to eq -19
        expect(calculadora.soma(-13, -21)).to eq -34
        expect(calculadora.soma(-1, -999)).to eq -1000
    end


    ###################### SUBTRAÇÃO ######################

    it('Deve subtrair dois números inteiros') do
        expect(calculadora.subtrai(8, 2)).to eq 6
    end

    it('Deve subtrair dois números decimais positivos') do
        expect(calculadora.subtrai(4.3, 5.9)).to be_within(0.01).of(-1.6)
        expect(calculadora.subtrai(10.4, 3.3)).to be_within(0.01).of(7.1)
        expect(calculadora.subtrai(0.2, 0.1)).to be_within(0.01).of(0.1)
    end

    it('Deve subtrair qualquer número com 0') do
        expect(calculadora.subtrai(9, 0)).to eq 9
    end

    it('Deve subtrair números negativos') do
        expect(calculadora.subtrai(-9, -10)).to eq 1
    end



    ###################### MULTIPLICAÇÃO ######################

    it('Deve multiplicar dois números inteiros positivos') do
        expect(calculadora.multiplica(3, 6)).to eq 18
    end

    it('Deve multiplicar dois números inteiros negativos') do
        expect(calculadora.multiplica(-3, -4)).to eq 12 #Teste para verificar condição de - * - = +
    end

    it('Deve multiplicar um número inteiro positivo e um número inteiro negativos') do
        expect(calculadora.multiplica(-7, 2)).to eq -14 #Teste para verificar condição de - * + = -
    end

    it('Deve multiplicar qualquer número com 0') do
        expect(calculadora.multiplica(5, 0)).to eq 0
    end


    ###################### DIVISÃO ######################

    it('Deve dividir dois números inteiros positivos') do
        expect(calculadora.divide(6, 2)).to eq 3
        expect(calculadora.divide(999, 7)).to be_within(0.1).of(142.7)
        expect(calculadora.divide(1, 2)).to be_within(0.01).of(0.5)
        
    end

    it('Deve dividir números inteiros negativos') do
        expect(calculadora.divide(-4, 2)).to eq -2
        expect(calculadora.divide(-500, 3)).to be_within(0.01).of(-166.66)
        expect(calculadora.divide(-10, -4)).to be_within(0.01).of(2.5)
        expect(calculadora.divide(0, -4)).to eq (0)
    end

    it('Não deve dividir um número por 0') do
        expect(calculadora.divide(10, 0)).to include 'Não é possível dividir um número por zero'
    end

    it ('Deve dividir dois números decimais') do
        expect(calculadora.divide(5.9, 4.3)).to be_within(0.01).of(1.37)
        expect(calculadora.divide(2.5, -1.5)).to be_within(0.01).of(-1.66)
        expect(calculadora.divide(-0.2, -0.1)).to be_within(0.01).of(2)
    end

    ###################### RAIZ ######################

    it('Deve calcular a raiz de um radicando e um indice qualquer') do
        expect(calculadora.raiz(8, 3)).to eq 2
        expect(calculadora.raiz(5, 2)).to be_within(0.01).of(2.23)
        expect(calculadora.raiz(100, 5)).to be_within(0.01).of(2.51)
    end

    it('Não deve calcular a raiz de um número negativo e um indice par') do
        expect(calculadora.raiz(-9, 2)).to include 'Não é possível obter uma raiz de índice par de um número negativo!'
    end

    it('Deve retornar Infinito quando o índice da raiz for 0') do
        expect(calculadora.raiz(17, 0)).to include 'A raiz de índice 0 é igual a Infinito!'
    end

    ###################### POTÊNCIA ######################

    it ('Deve calcular a potência de uma base elevada a um expoente') do
        expect(calculadora.potencia(2, 3)).to eq(8)
        expect(calculadora.potencia(3, 2)).to eq(9)
        expect(calculadora.potencia(4, 0.5)).to eq(2) #Verificação se calcula com expoente decimal
    end
    
    it ('Deve retornar 1 quando o expoente for 0') do
        expect(calculadora.potencia(5, 0)).to eq(1)
        expect(calculadora.potencia(0, 0)).to eq(1)
    end
    
    it ('Deve calcular potências com expoente negativos') do
        expect(calculadora.potencia(2, -3)).to eq(1.0/8) #Potência de número negativo é 1/(potência) ex: 1/2³
        expect(calculadora.potencia(3, -2)).to eq(1.0/9)
    end
    
    it ('Deve calcular potências com bases negativas') do
        expect(calculadora.potencia(-2, 3)).to eq(-8) 
        expect(calculadora.potencia(-3, 2)).to eq(9)
    end

end