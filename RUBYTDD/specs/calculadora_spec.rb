require 'rspec'
require_relative '../src/calculadora'

describe('Calculadora') do
    calculadora = Calculadora.new

    ###################### SOMA ######################
    it('Deve somar dois números inteiros positivos') do
        expect(calculadora.soma(4, 5)).to eq 9
    end

    it('Deve somar dois números decimais positivos') do
        expect(calculadora.soma(4.3, 5.9)).to eq 10.2
    end

    it('Deve somar qualquer número com 0') do
        expect(calculadora.soma(9, 0)).to eq 9
    end

    it('Deve somar números negativos') do
        expect(calculadora.soma(-9, -10)).to eq -19
    end


    ###################### SUBTRAÇÃO ######################

    it('Deve subtrair dois números inteiros positivos') do
        expect(calculadora.subtrai(8, 2)).to eq 6
    end

    it('Deve somar dois números decimais positivos') do
        expect(calculadora.soma(4.3, 5.9)).to eq 10.2
    end

    it('Deve somar qualquer número com 0') do
        expect(calculadora.soma(9, 0)).to eq 9
    end

    it('Deve somar números negativos') do
        expect(calculadora.soma(-9, -10)).to eq -19
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
    end

    it('Deve dividir dois números inteiros positivos') do
        expect(calculadora.divide(6, 2)).to eq 3
    end

    it('Deve dividir dois números inteiros resultando em um número decimal') do
        expect(calculadora.divide(6, 4)).to eq 1.5
    end

    it('Não deve dividir um número por 0') do
        expect(calculadora.divide(10, 0)).to include 'Não é possível dividir um número por zero'
    end

    ###################### RAIZ ######################

    it('Deve calcular a raiz de um radicando e um indice qualquer') do
        expect(calculadora.raiz(8, 3)).to eq 2
    end

    it('Não deve calcular a raiz de um número negativo e um indice par') do
        expect(calculadora.raiz(-9, 2)).to include 'Não é possível obter uma raiz de índice par de um número negativo!'
    end

    it('Deve retornar Infinito quando o índice da raiz for 0') do
        expect(calculadora.raiz(17, 0)).to include 'A raiz de índice 0 é igual a Infinito!'
    end


end