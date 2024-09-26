import UIKit

// SORTED

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

// Con sorted lo que hacemos es crear una nueva colección ordenada en base a una base

print(myArray)
var myArraySorted = myArray.sorted()
print("\(myArray) - Array sin ordenar original")
print("\(myArraySorted) - Array ordenado nuevo Sorted")

// Hacerlo de fomra customizable, recordar que esta vez se lo guarda en una nueva variable
myArraySorted = myArray.sorted{(IntA, IntB) -> Bool in
    return IntA > IntB
}
print("\(myArraySorted) - Array ordenado ahora de forma custom")

// Ordenar diccionarios (En este caso lo transforma en un array que nos entregará claves y valores (una tupla)
// creamos el array en función del diccionario
let mySortedDictionary = myDictionary.sorted { (elementA,elementB) -> Bool in
    elementA.key < elementB.key
}

print(mySortedDictionary)

// Set de la misma forma que el diccionario debemos convertirlo en un array para poder aplicarle sorted

var mySortedSet = mySet.sorted() // Nuevo array en función a un SET
print(mySortedSet)

// Ordenarlo de la forma customizable 
mySortedSet = mySet.sorted{ (intA, intB) -> Bool in
    return intA > intB
}
print(mySortedSet)
