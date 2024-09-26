import UIKit

// MAP (Podemos transformar los valores de una colección en otra colección del mismo tipo o de otra diferente )
// Utilizamos MAP siempre que queramos modificar los valores de una colección siguiendo un mismo criterio

var myArray = [5,8,1,0,3,9,7,2,4,6]
// Diccionario - Clave / valor
let myDictionary = [5:"Cinco",
                    8:"Ocho",
                    1:"Uno",
                    0:"Cero",
                    3:"Tres",
                    9:"Nueve",
                    7:"Siete",
                    2:"Dos",
                    4:"Cuatro",
                    6:"Seis",
]
// Set por defecto los valores estan desordenados
let mySet: Set = [5,8,1,0,3,9,7,2,4,6]

// Ejemplo sumar 10 a todos los valores que tenemos en nuestro array

let myMapArray = myArray.map { (myInt) -> Int in
    return myInt + 10
}

print(myMapArray)

// Cambiar a String

let myStringMapArray = myArray.map {(myInt) -> String in
    return "Este es el número \(myInt)"
}

print(myStringMapArray)

// MAP en dicionarios

let myIntMapArray = myDictionary.map { (myElement) -> Int in
    return myElement.key
}
print(myIntMapArray)

// MAP en SET (Transformamos los Int en un String
let myStringMapArray2 = mySet.map {(myInt) -> String in
    return "\(myInt)"
}
print(myStringMapArray2)
