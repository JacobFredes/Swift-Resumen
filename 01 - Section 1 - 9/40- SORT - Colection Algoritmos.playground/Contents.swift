import UIKit

// SORT

// Algorimtos para colecciones
// Array - Desordenado
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

// Algoritmo de ordenación SORT (recordar que las colecciones tienen que ser var y no let  para que sean mutable)
print("\(myArray) - Array sin ordenar")
myArray.sort() // Se le aplica el algoritmo
print("\(myArray) - Array ordenado")
// Algoritmo para ordenar de forma customizada

myArray.sort { (IntA, IntB) -> Bool in
    return IntA > IntB
}
print("\(myArray) - Array ordenado de forma customizada , de mayor a menor")


// No estaran soportadas por el algoritmo ya que no se pueden ordenar
//myDictionary.sorted()
//mySet.sorted()
