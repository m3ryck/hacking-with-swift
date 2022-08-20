import UIKit
import Security


//func printTable(foo numberA: Int, end:Int  = 10) -> [Int] {
//
//    var table = [Int]()
//
//    for i in 0...end{
//        table.append(numberA*i)
//    }
//
//    return table
//
//}
//
//
//var tabelaDo2 = printTable(foo: 2, end: 12)
//print(tabelaDo2)
//
//



enum PasswordError: Error {
    case short,obvious
}



//throws é utilizado quando uma funçao for capaz de lancar erros sem manipulalos, escrevemos antes do tipo de retorno.
// nao significa que ela vai lançar erros, apenas que pode
func checkPassword(_ pwrd: String) throws -> String{
    
    if pwrd.count<5{
        throw PasswordError.short
    }
    
    if pwrd == "123456" || pwrd == "654321" || pwrd == "senha"{
        throw PasswordError.obvious
    }
    
    if pwrd.count < 8{
        return "Ok"
    }else if pwrd.count < 10 {
        return "Good"
    }else{
        return "Excellent"
    }
}

do {
    let rating = try checkPassword("14123")
    print("Password rating: \(rating)")
}catch PasswordError.obvious{
    print("Irmão essa senha ta muito manjada, mude isso boy kkkk")
}catch PasswordError.short{
    print("Menor que essa senha somente esse teu pinto murcho, aumenta essa porra kray kkkkk")
}catch{
    print("Beleza, não sei oq q ta acontecendo, mas alguma coisa deu errada")
}
