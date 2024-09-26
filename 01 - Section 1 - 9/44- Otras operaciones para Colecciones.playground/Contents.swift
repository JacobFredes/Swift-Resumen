import UIKit

// Otras operaciones para colecciones


var myArray = [5,8,1,0,3,9,7,2,4,6]
// Diccionario - Clave / valor
var myDictionary = [5:"Cinco",
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
var mySet: Set = [5,8,1,0,3,9,7,2,4,6]

// Count Operation (cuenta la cantidad de valores en la colección)
print(myArray.count)
print(myDictionary.count)
print(mySet.count)
                  
// isEmpty  (Nos permite saber si nuestra colección esta vacia o no) (False = no, True = Si)

print(myArray.isEmpty)
print(myDictionary.isEmpty)
print(mySet.isEmpty)

// reversed (relacionado a los algoritmos de ordenación, invierte el orden de nuestra colección)
print(myArray.reversed() as [Int]) 
    // Debemos indicar el tipo de retorno en el array de esa forma
    // En el caso de los diccionarios y set recordar que al no estar ordenado será aleatorio
print(myDictionary.reversed())
print(mySet.reversed())

// Operaciones First (retorna el primer valor) o Last (retorna el último valor)
print(myArray.first!)
    // En el caso de los diccionarios y set recordar que al no estar ordenado será aleatorio
print(myDictionary)
print(myDictionary.first!)
print(mySet)
print(mySet.first!)

    // last (ultimo valor) solo existe en arrays nomás , en diccionarios o set no
print(myArray.last!)

// Drop First (Nos muestra una secuencia pero eliminando el primero)
print(myArray.dropFirst())

// Drop Last (Nos muestra una secuencia pero eliminando el último)
print(myArray.dropLast())

// Pop Last solo estará para Arrays
print(myArray.popLast()!)

// Por First soo estará disponible para Dicionarios y Set
print(myDictionary.popFirst()!)
print(mySet)
print(mySet.popFirst()!)

