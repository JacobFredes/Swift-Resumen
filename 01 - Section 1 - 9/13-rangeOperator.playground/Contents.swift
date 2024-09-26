import UIKit

// RANGE OPERATOR
// Nos sirve para manipular arrays dew forma simple
// index     0 1 2 3 4 5 6 7 8 9
var array = [0,1,2,3,4,5,6,7,8,9]

// Operador rango doble lado o two-sided range operator
// Pedis un rango cerrado del array con sus indices
// Siempre tiene que ser del menor al mayor (Indice)
var subSetArray = array [1...3] // Muestra [1,2,3]
    subSetArray = array [1..<3] // Muestra [1,2]

// Operador rango lado único o one-sided range operator
var subSetArray2 = array[...4] // Muestra [1,2,3,4]
    subSetArray2 = array[5...] // Muestra [5,6,7,8,9]

// Rango cerrado (No se puede acceder a sus numeros internos)
var rangoCerrado = [1...5]
rangoCerrado[0] // Solo con indice 0 muestra que es rango cerrado

// Para transformar un rango cerrado en array hacemos asi
 // Lo guardamos dentro de una variable y lo convertimos en array
var subArray = Array(rangoCerrado[0]) //Muestra del 1 al 5
    // 0 1 2 3 4 (Indice)
    // 1 2 3 4 5 (Valor dentro del rango)
    subArray[2]  // Muestra 3
