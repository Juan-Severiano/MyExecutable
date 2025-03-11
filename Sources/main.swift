// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

let name = "Francisco Juan"
print("Hello, world! Learning Swift on Apple Developer Academy")

func fn(param: String) {
    print(param)
}

// Exercicio 01
func compararValores(a: Int, b: Int, c: Int) {
    let soma = a + b
    print("O valor da soma entre a(\(a)) e b(\(b)) eh: \(soma)")
    
    if soma < c {
        print("A soma de a e b resulta em \(soma) que eh menor que c")
    } else {
        print("A soma entre 'a' e 'b' eh maior que 'c'")
    }
}

compararValores(a: 2, b: 2, c: 6)

// Exercicio 02
func verifyTypesOfNumber(number: Int) -> String {
    var isEven = false
    if number % 2 == 0 {
        isEven = true
    }
    var isPositive = false
    if number > 0 {
        isPositive = true
    }
    let message = "O numero \(number) eh \(isEven ? "Par" : "Impar") e \(isPositive ? "Positivo" : "Negativo")"
    
    return message
}

print(verifyTypesOfNumber(number: -4))

// Exercicio 03
func calcIMC(weight: Float, height: Float) {
    let imcResult = weight / pow(height, 2)
    switch imcResult {
    case 0...18.5:
        print("Abaixo do peso")
    case 18.6...24.9:
        print("Peso ideal, parabens!!")
    case 25...29.9:
        print("Levemente acima do peso, cuidado")
    case 30...34.9:
        print("Obesidade Grau I, cuidado, reveja seus habitos")
    case 35...39.9:
        print("Obesidade Grau II, voce esta no grau severo")
    case 40...100:
        print("Obesidade Grau III")
    default:
        print("Nao foi encontrado, confira se o valor esta correto")
    }
}

calcIMC(weight: 70, height: 1.5)
