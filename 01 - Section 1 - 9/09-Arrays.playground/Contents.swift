import UIKit
// Los arrays pueden ser de Int, Float, Char o inclusive Strings, pero solo deben contener un solo tipo
// Podemos crear arreglos vacios para luego agregarle datos
var emptyArray : [Int] = [] // De tipo entero
print(emptyArray)

// Indice           0 1 2
var arrayNumbers = [1,2,3]  //Array mutable
print(arrayNumbers)

// Indice         0 1 2
let arrayConst = [3,2,1]    //Array inmutable
print(arrayConst)

// Buscar contenido por indice dentro de un array
print(arrayConst[0])

// Agregar nuevos valores al final del array (solo funciona con arrays mutables)
arrayNumbers.append(5) // Use append
print(arrayNumbers)    // [1, 2, 3, 5]

// Si queremos agregar un número y hacer que los demas se rehubiquen sin sobreescribir
//    Nuevo valor at: Index (Posición)
arrayNumbers.insert(4, at: 3)
print(arrayNumbers)           // [1, 2, 3, 4, 5]

// Eliminar valores
arrayNumbers.removeLast()     //Elimina el último
print(arrayNumbers)           // [1, 2, 3, 4]

// Eliminar valor por indice
arrayNumbers.remove(at: 3)   //Elimina por indice  (recordar que los indices se reacomodan)
print(arrayNumbers)          // [1, 2, 3]
 
// Elimina el array completo
arrayNumbers.removeAll()     //Elimina todo
print(arrayNumbers)          // [] vacio

// Reasignarle un valor al array
var daysOfWeek: [String] = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]
print(daysOfWeek[2]) // Muestra Miercoles
print(daysOfWeek)    // Muestra todos los días

daysOfWeek[2] = "No Miercoles"
print(daysOfWeek[2])  // Muestra No miercoles
print(daysOfWeek)     // Muestra todos los días
