import UIKit


// ARRAYS

//Se você precisar de uma coleção de valores que possam
//  conter duplicatas, ou a ordem de seus itens for importante, você deve usar uma matriz:
let baco = "Baco Exu do Blues"
let djonga = "Djonga Sensacional"
let froid = "mc Froid"
let bk = "Bk"

let rappers = [baco,djonga,froid,bk]

rappers[0]


// SETS | CONJUNTOS
// armazenados em ordem aleatoria, itens unicos, nao se repetem

//Se você precisar de uma coleção de valores que devem
//  ser exclusivos ou precisar verificar se um item específico
//  está lá de forma extremamente rápida, use um conjunto:

let colors = Set(["red","green","blue"])

let colors2 = Set(["red","blue","green","red","blue"])



// TUPLAS
// nao pode adicionar ou remover, nao pode alterar o tipo

//Se você precisar de uma coleção específica e fixa de valores relacionados
//  em que cada item tenha uma posição ou nome preciso, use uma tupla:
var name = (first:"taylor", last:"swift")

name.0

name.first

// DICIONARIOS
let heights = ["taylor swift": 1.23,
               "ed Sheeran": 1.45]

heights["taylor swift"]

let sorvetePreferido = [ "Adriano":"Chocolate Amargo", "Mariangela": "Chocolate Branco", "Bianca1": "Creme"]

sorvetePreferido["Adriano"]
sorvetePreferido["Bianca", default: "Desconhecido"]

//Criando coleções vazias


var teams = [String:String]() // Dicionario com strings para chaves e valores
teams["Paulo"] = "Red"
teams["Marta"] = "Green"
teams

var scores = Dictionary<String,Int>() // Outra forma de iniciar um dicionarios com string para chaves e inteiros para valores


var results = [Int]() // Array vazio para armazenar inteiros
results.append(1)
results

var results2 = Array<Int>() // Outra forma de inicializar um array para armazenar inteiros



var words = Set<String>() // Inicializando conjunto para armazenar strings
var numbers = Set<Int>() // Inicializando conjunto para armazenar inteiros


// Enumerations | Enumeracoes

enum Result {
    case sucess
    case failure
}

var teste_1 = Result.failure
var teste_2 = Result.sucess


enum Things{
    case falando(sobre:String)
    case cantando(volume:Int)
    case sonhando(sobre:String)
    case comprando(Itens:String)// estudar a possibilidade de passar uma lista
}

var falando = Things.falando(sobre: "Comer um hamburgao mais tarde")
var cantando = Things.cantando(volume: 123)
var comprando = Things.comprando(Itens: "Um celular bacana")

enum Planetas:Int{
    case mercurio = 1 // opcional, fazendo isso ele conta apartir de 1 aq, se n ele contaria a partir de 0
    case venus
    case terra
    case marte
    case saturno
    case plutao
}

let earth = Planetas(rawValue: 3)


let Resumo = """

Matrizes, conjuntos, tuplas e dicionários permitem armazenar um grupo de itens em um único valor.
Cada um deles faz isso de maneiras diferentes, então o que você usa depende do comportamento que você deseja. 

Arrays armazenam itens na ordem em que você os adiciona e você os acessa usando posições numéricas.

Conjuntos armazenam os itens sem qualquer ordem, para que você não possa acessá-los usando posições numéricas.

As tuplas têm tamanho fixo e você pode anexar nomes a cada um de seus itens. Você pode ler itens usando posições numéricas ou usando seus nomes.

Os dicionários armazenam itens de acordo com uma chave e você pode ler itens usando essas chaves.

Enums são uma maneira de agrupar valores relacionados para que você possa usá-los sem erros de ortografia.

Você pode anexar valores brutos a enums para que possam ser criados a partir de inteiros ou strings, ou pode adicionar valores associados para armazenar informações adicionais sobre cada caso.
"""
