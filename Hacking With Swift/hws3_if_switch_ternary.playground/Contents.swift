import UIKit

let fakers = "Fakers Gonna"
let action = fakers + " Fake "

let arrayOne = ["ElementONE","ElementTwo"]
let arrayTwo = ["ElementThree","ElementFour"]

let sumOfArray = arrayOne + arrayTwo

var score = 95
score -= 5

var textin = " era uma vez uma menina muito "
textin += "chata kkkk"

let firstScore = 6
let secondScore = 4

firstScore == secondScore
firstScore != secondScore

firstScore < secondScore
firstScore >= secondScore

"Taylor" <= "Swift"

// em string a letra anterior é menor que a letra posterior

"a" <= "b"

let firstCard = 2
let secondCard = 12

if firstCard + secondCard == 21 {
    print("BlackJack!!")
} else if firstCard + secondCard == 2{
    print("Aces - Lucky!")
} else {
    print("BlackJack!")
}

let age1 = 20
let age2 = 21

if age1 > 18 && age2 > 18{
    print("Both are over 18")
}

if age1 > 18 || age2 > 18{
    print("At least one is over 18")
}

print(firstCard == secondCard ? "Cards are the same" : "Cards are different")


let weather = "sunny"

switch weather {
case "rain":
    print("Bring a ummbrella")
case "snow":
    print("Wrap um warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough // executa as proximas clausulas
default:
    print("Enjoy your gayDay!")
    
}

let score2 = 85

switch score2 {
case 0..<50: // vai de 0 a 49, excluindo o 50
    print("you failed, cow!")
case 50..<85: // vai de 50 a 84, excluindo o 85
    print("You did ok, kkkkk")
default: // qualquer coisa diferente do range 0-84
    print("Oh Daam, you did great, son of a bitch!")
}

