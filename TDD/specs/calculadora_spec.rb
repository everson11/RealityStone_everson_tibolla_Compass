require 'rspec'

require_relative '../src/calculadora'

describe('Calculadora') do
    Calculadora = Calculadora.new

    #-=-=-=-=-=-=-=-=-=-=-=-=-=-=-soma-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    it('Deve somar dois inteiros positivos') do
        expect(Calculadora.soma(4, 5)).to eq 9
    end
    it('Deve somar um número qualquer com 0') do 
        expect(Calculadora.soma(9, 0)).to eq 9
    end
    it('Deve somar números negativo') do
        expect(Calculadora.soma(-9, -10)).to eq -19
    end
    it('Deve somar números com ponto flutuante') do
        expect(Calculadora.soma(1.3, 1.3)).to eq 2.6
    end
    it('Deve somar números negativos com ponto flutuante') do
        expect(Calculadora.soma(-1.5, -1.7)).to eq -3.2
    end
    it('Deve somar um número negativo e um positivo com ponto flutuante ') do
        expect(Calculadora.soma(-1.5, 3.1)).to eq 1.6
    end
    it('Deve somar um positivo com negativo ') do
        expect(Calculadora.soma(7, -5 )).to eq 2
    end
    #-=-=-=-=-=-=-=-=-=-=-=-=-=-=-subtracao-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    it('Deve subtrair dois inteiros positivos') do
        expect(Calculadora.subtrai(5, 4)).to eq 1
    end
    it('Deve subtrair um número qualquer com 0') do
        expect(Calculadora.subtrai(6, 0)).to eq 6
    end
    it('Deve subtrair números negativos') do
        expect(Calculadora.subtrai(-4, -2)).to eq -2
    end
    it('Deve subtrair números com ponto flutuante') do
        expect(Calculadora.subtrai(5.3, 2.5)).to eq 2.8
    end
    it('Deve subtrair números negativos com ponto flutuante') do
        expect(Calculadora.subtrai(-4.4, -2.2)).to eq -2.2
    end
    it('Deve subtrair um número negativo e um positivo com ponto flutuante ') do
        expect(Calculadora.subtrai(-1.7, 2.1)).to eq -3.8
    end
    it('Deve subtrair um positivo com negativo ') do
        expect(Calculadora.subtrai(10, -5)).to eq 15
    end
    #-=-=-=-=-=-=-=-=-=-=-=-=-=-=-multiplicacao-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    it('Deve multiplicar dois inteiros positivos') do
        expect(Calculadora.multiplicacao(3, 3)).to eq 9
    end
    it('Deve multiplicar um número qualquer com 0') do 
        expect(Calculadora.multiplicacao(6, 0)).to eq 0
    end
    it('Deve multiplicar números negativo') do
        expect(Calculadora.multiplicacao(-4, -9)).to eq 36
    end
    it('Deve multiplicar números com ponto flutuante') do
        expect(Calculadora.multiplicacao(1.5, 2.5)).to eq 3.75
    end
    it('Deve multiplicar números negativos com ponto flutuante') do
        expect(Calculadora.multiplicacao(-6.1, -2.1)).to eq 12.81
    end
    it('Deve multiplicar um número negativo e um positivo com ponto flutuante ') do
        expect(Calculadora.multiplicacao(-4.3, 3.8)).to eq -16.34
    end
    it('Deve multiplicar um positivo com negativo ') do
        expect(Calculadora.multiplicacao(4, -8 )).to eq -32
    end
    #-=-=-=-=-=-=-=-=-=-=-=-=-=-=-divisao-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    it('Deve dividir dois inteiros positivos') do
        expect(Calculadora.divisao(8, 4)).to eq 2
    end
    it('Deve dividir um número qualquer com 0') do 
        expect(Calculadora.divisao(4, 0)).to eq "Não é possivel divir um numero por 0"                 
    end
    it('Deve dividir números negativo') do
        expect(Calculadora.divisao(-12, -2)).to eq 6
    end
    it('Deve dividir números com ponto flutuante') do
        expect(Calculadora.divisao(6.6, 3.3)).to eq 2
    end
    it('Deve dividir um positivo com negativo ') do
        expect(Calculadora.divisao(6, -4 )).to eq -2                                  
    end
    #-=-=-=-=-=-=-=-=-=-=-=-=-=-=-potencia-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    it('Deve calcular a potenciação de dois números positivos') do
        expect(Calculadora.potencia(3, 2)).to eq 9
    end
    it('Deve calcular a potenciação de um números negativo') do
        expect(Calculadora.potencia(-2, 2)).to eq 4
    end
    it('Deve calcular a potenciação de um número qualquer com 0') do
        expect(Calculadora.potencia(0, 2)).to eq 0
    end
    it('Deve calcular a potenciação de dois números') do
        expect(Calculadora.potencia(6, 2)).to eq 36
    end
    #-=-=-=-=-=-=-=-=-=-=-=-=-=-=-raiz-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    it('Deve calcular a raiz quadrada de um número positivo') do
        expect(Calculadora.raiz(9)).to eq 3
    end
    it('Deve calcular a raiz quadrada de um número negativo') do
        expect(Calculadora.raiz(-6)).to eq "Raiz de numero negativo não é possivel calcular!"
    end
    it('Deve calcular a raiz quadrada de um número qualquer com 0') do
        expect(Calculadora.raiz(0)).to eq 0
    end
    it('Deve calcular a raiz quadrada de dois números') do
        expect(Calculadora.raiz(16)).to eq 4
    end
    #-=-=-=-=-=-=-=-=-=-=-=-=-=-=-fatorial-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    it('Deve calcular o fatorial de um número positivo') do
        expect(Calculadora.fatorial(5)).to eq 120
    end
    it('Deve calcular o fatorial de um número aleatorio') do
        expect(Calculadora.fatorial(6)).to eq 720
    end
end