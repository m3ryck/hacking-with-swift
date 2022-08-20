import UIKit


enum Limite: Error{
    case foraDoLimiteInferior,foraDoLimiteSuperior,semRaiz
    
}

func calculaRaiz( _ number:Int ) throws -> Int{
   
    if ( number < 0 ){
        throw Limite.foraDoLimiteInferior
    }else if (number > 10_000){
        throw Limite.foraDoLimiteSuperior
    }else{
    
        for i in 1...100{
            if(i*i == number){
                return i
            }
        }
        
        throw Limite.semRaiz
    }
}


do{
    let raiz = try calculaRaiz(41231233)
    print("A raiz quadrada do número é: \(raiz)")
    
} catch Limite.foraDoLimiteInferior{
        print("Numero inserido fora do limite inferior")
} catch Limite.foraDoLimiteSuperior{
    print("Numero inserido fora do limite superior")
} catch Limite.semRaiz{
        print("Numero sem raiz quadrada")
}

