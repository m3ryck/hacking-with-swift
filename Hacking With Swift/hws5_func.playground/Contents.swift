import UIKit

//func showPoic(){
//    print("Hello, i'm a poic")
//    print("oh Year")
//}
//
//showPoic()
//
//func rollDice(number: Int) -> Int{
//    return Int.random(in: 1...number)
//}
//
//var d4 = rollDice(number: 4)
//
//
//func pythagoras(catetoA: Double, catetoB: Double)->Double{
//    sqrt(catetoA*catetoA + catetoB*catetoB)
//}
//
//var triangleA = pythagoras(catetoA: 3, catetoB: 4)

func getUser() -> (firstname: String, lastname: String, age: Int){
//    (firstname:"Adriano", lastname:"Santos", age:25)
    ("Adriano", "Santos", 25) // o cod de cima tb funciona
}

var user1 = getUser()
print("Name: \(user1.firstname) | Lastname: \(user1.lastname) | Age: \(user1.age)")

var (firstname,lastname,_) = getUser()
print("Name: \(firstname) | Lastname: \(lastname)" )
      
      
func rollManyDices(sides: Int, qtdDices: Int) -> [Int]{
    var rolls = [Int]()
    
    for _ in 1...qtdDices{
        rolls.append(Int.random(in: 1...sides))
    }
    
    return rolls
}

let dados = rollManyDices(sides: 20, qtdDices: 5)
print(dados)


func isUppercase(_ string: String) -> Bool { // é possivel ocultar o nome do parametro para chamar a funçao sem colocar o nome do parametro.
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)


// buscar entender isso aqui, aparentemente é apenas um detalhe, que melhora a visualizaçao dos parametros informados
//personalizaçao de rotulos dos parametros

func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)



