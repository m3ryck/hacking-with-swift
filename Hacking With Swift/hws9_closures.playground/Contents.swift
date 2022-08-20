import UIKit
import Darwin

//closure expression, é uma funçao que n recebe parametros e nao retorna um valor

let sayHello = {
    print("Hi there!")
}

sayHello()

//mas podemos ter parametros e um retorno

let sayHello2 = { (name: String) -> String in
        "Hi \(name)"
}

print(sayHello2("Adriano"))

// ############

func greetUser() {
    print("Hi there!")
}

// void é o tipo da funçao em si, ele n retorna nenhum valor, n gera erros...
var greetCopy: () -> Void = greetUser

func getUserData(for id: Int) -> String{
    if id==1989{
        return "Taylor Swift"
    }else{
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)

print(user)

let sayHello3 = { (name: String) -> String in
        "Hi \(name)"
}

print(sayHello3("Adriano"))

//#############

let team = ["Suanny","Mariangela","Adriano", "Alexandre","Juan", "Eugenio"]

let sortedTeam = team.sorted()

print(sortedTeam)

func sortedCaptain(name1: String, name2: String) -> Bool{
    if(name1=="Mariangela"){
        return true
    }else if(name2=="Mariangela"){
        return false
    }
    
    return name1 < name2
    
}

//let sortedTeam2 = team.sorted(by: sortedCaptain)
//
//print(sortedTeam2)
// a funçao sorted,pode receber uma funcao customizada que obrigatoriamente recebe duas strings e retorna um booleano, portanto não precisamos especificar o tipo dos parametros e do retorno.

//let captainFirstTeam = team.sorted(by: {(name1:String,name2:String)->Bool in
//    if(name1=="Mariangela"){
//        return true
//    }else if(name2=="Mariangela"){
//        return false
//    }
//
//    return name1 < name2
//})

let captainFirstTeam = team.sorted{
    
    if($0=="Mariangela"){
        return true
    }else if($1=="Mariangela"){
        return false
    }
    
    return $0 < $1
}

let reverseTeam = team.sorted{$0 > $1}
print(captainFirstTeam)


let tOnly = team.filter { $0.hasPrefix("A")}
print(tOnly)

let upperCaseTeam = team.map { $0.uppercased()
}

print(upperCaseTeam)

// ###############

func makeArray(size: Int, using generator:() -> Int) -> [Int]{
    var numbers = [Int]()
    
    for _ in 0..<size{
        numbers.append(generator())
    }
    
    return numbers
}

func generateNumber()->Int{
    Int.random(in: 1...12)
}

let rollsD20 = makeArray(size: 6) {
    Int.random(in: 1...20)
}

let rollsD12 = makeArray(size: 6, using: generateNumber)

print(rollsD20)
print(rollsD12)
