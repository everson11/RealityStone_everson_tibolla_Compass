class Calculadora

    def soma(a, b)
        a + b
    end
    def subtrai(a, b)
        a - b
    end
    def multiplicacao(a, b)
        a * b
    end
    def divisao(a, b)
        a / b
    rescue ZeroDivisionError
        "Não é possivel divir um numero por 0"
    end      
    def potencia(a, b)
        a ** b
    end
    def raiz(a)
        Math.sqrt(a)
    rescue Math::DomainError
        "Raiz de numero negativo não é possivel calcular!"
    end
    def fatorial(a)
        (1..a).inject(:*)
    rescue ArgumentError
        "Fatorial de numero negativo não é possivel calcular!"
    end
end
