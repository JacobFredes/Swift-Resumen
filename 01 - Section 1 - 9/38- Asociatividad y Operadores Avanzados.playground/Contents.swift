import UIKit

// PRECEDENCIA Y ASOCIATIVIDAD

// Importancia en el orden que se ejecutan las operaciones en swift
// En un principio podriamos pensar que se van a ejecutar de izquierda a derecha
//                   5 % 4 * 5
//                       1 * 5
//                           5
let myInt: Int = 2 + 3 % 4 * 5
                
// Pero en realidad primero se ejecuta % y * , luego + o -
//              2 + ((3 % 4) * 5)
// Tener en cuenta el uso de () para asociar de forma diferente en caso de necesitarlo
let myInt2: Int = (((2 + 3) % 4) * 5)


// OPERADORES AVANZADOS

// - Operadores bit a bit: realizar operaciones con bits de tipo NOT, AND, OR, XOR
// - Operadores de desplazamiento : Para desplazar bits
// - Operadores de desbordamiento : Para manejar errores en valores por encima de su límite.
// - Operadores custom : Para definir nuestros mismos operadores
