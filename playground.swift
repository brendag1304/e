import Foundation

let randomNumber = Int.random(in: 1...10) // Gera um número aleatório entre 1 e 10
var guessedNumber: Int?

while guessedNumber != randomNumber {
    print("Adivinhe o número entre 1 e 10:")
    let input = readLine()
    guessedNumber = Int(input ?? "")
    
    if guessedNumber != nil {
        if guessedNumber! < randomNumber {
            print("Tente um número maior!")
        } else if guessedNumber! > randomNumber {
            print("Tente um número menor!")
        }
    } else {
        print("Entrada inválida. Tente novamente.")
    }
}

print("Parabéns! Você adivinhou o número \(randomNumber).")
