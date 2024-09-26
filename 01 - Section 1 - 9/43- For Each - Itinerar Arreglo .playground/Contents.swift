import UIKit

// FOR EACH
// Funcion que nos permite recorrerlos similar al for pero de una forma más simple y más rápida

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

// forEach para arrays
myArray.forEach { (myInt) in
    print(myInt)
}

// fotEach para diccionarios
myDictionary.forEach { (myElement) in
    print("Se imprimirá la clave : \(myElement.key)")
    print("Se imprimirá el valor : \(myElement.value)")
}

// forEach para Set
mySet.forEach { (myInt) in
    print(myInt)
}
