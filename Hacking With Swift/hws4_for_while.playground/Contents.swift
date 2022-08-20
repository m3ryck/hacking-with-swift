import UIKit
import Security
import SwiftUI

//let platforms = ["iOS", "macOs","tvOs","WatchOs"]
//
//for os in platforms {
//    print("Swift works great on \(os)")
//}
//
//for i in 1...5 {
//    print("5 X \(i) is \(5*i)")
//}
//
//for i in 1..<5 {
//    print("5 X \(i) is \(5*i)")
//}
//
//var lyric = "Haters Gonna"
//for _ in 1...4 {
//    lyric += " hate"
//}
//
//print(lyric)

//var countdown = 10
//
//while countdown > 0 {
//    print("\(countdown)…")
//    countdown -= 1
//}
//
//print("Blast off!")
//
//var roll = 0
//
//while roll != 20{
//
//        roll = Int.random(in: 1...20)
//        print("vc rolou \(roll)")
//
//        if(roll == 20){
//            print("Acerto Crítico, vc rolou \(roll)")
//        }
//
//}

//let number1 = 4
//let number2 = 14
//var multiples = [Int]()
//
//for i in 1...100_000 {
//    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
//        multiples.append(i)
//
//        if multiples.count == 30 {
//            break
//        }
//    }
//}
//
//print(multiples)

var count = 0

while count < 5 {
    
    print("While 1")
    
    if count == 2 {
        break
    }
    
    count += 1
}

var count2 = 0

while count2 < 4{
    print("Whike 2")
    count2 += 1
}
