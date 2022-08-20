import UIKit

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

func transNumb(arrayNumbers: [Int]) -> Void{
    
    arrayNumbers.filter{ $0 % 2 == 1 }.sorted { $0 < $1 }.map {
        print("\($0) is a luck number ")
    }
}


let finalNumbers = transNumb

finalNumbers(luckyNumbers)
