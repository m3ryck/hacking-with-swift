import UIKit

//variaveis
var greeting = "Hello, playground"

print(greeting)

//inteiros
var age = 25

var ageOfWorld = 4_500_000

//multiline string
var multilineString = """
oh my god
this is
a multiline string
"""

var multilineStringWithBar = """
Oh shit \
this is a bar? \
where were you with your head ?
"""

// Doubles e booleans

var pi = 3.14

var trueOrFalse = true

// nao podemos somar inteiro com doubles

var numInt = 10
var numDoub = 5.5

//erro
//var sum = numInt + numDoub

//interpolação de string

var interString = "a soma de 2 + 2 eh igual a: \(2+2)"

var interString2 = "a idade do mundo eh igual :\(ageOfWorld)"

//constantes

let taylor = "swift"

//erro
//taylor = "aiai"

//type anottations
//casos de uso:
//Swift não consegue descobrir qual tipo deve ser usado.
//Você quer que o Swift use um tipo diferente do padrão.
//Você não quer atribuir um valor ainda.

let nome: String = "Adriano"
let age2: Int = 26
let fat: Bool = true
let height: Double = 111.5


